#ifndef _RF24_FW
    #include <stdio.h>
    #include <inttypes.h>
#endif
#include "RF24Remote.h"
#include "nRF24L01.h"

const ERF24ParamType RF24Commands[][2][MAX_PARAMS] PROGMEM  =
{
    /*begin*/ {{RF24_none}, {RF24_none}},
    /*startListening*/ {{RF24_none}, {RF24_none}},
    /*stopListening*/ {{RF24_none}, {RF24_none}},
    /*available*/ {{RF24_none}, {RF24_bool, RF24_none}},
    /*availablePipe*/ {{RF24_none}, {RF24_bool, RF24_uint8, RF24_none}},
    /*read*/ {{RF24_uint8, RF24_none}, {RF24_buff, RF24_none}},
    /*write*/ {{RF24_buff, RF24_uint8, RF24_none}, {RF24_bool, RF24_none}},
    /*writeMulticast*/ {{RF24_buff, RF24_uint8, RF24_bool, RF24_none}, {RF24_bool, RF24_none}},
    /*openWritingPipe*/ {{RF24_buff, RF24_none}, {RF24_none}},
    /*openWritingPipe40*/ {{RF24_uint64, RF24_none}, {RF24_none}},
    /*openReadingPipe*/ {{RF24_uint8, RF24_buff, RF24_none}, {RF24_none}},
    /*openReadingPipe40*/ {{RF24_uint8, RF24_uint64, RF24_none}, {RF24_none}},
    /*printDetails*/ {{RF24_none}, {RF24_buff, RF24_none}},
    /*rxFifoFull*/ {{RF24_none}, {RF24_bool, RF24_none}},
    /*powerDown*/ {{RF24_none}, {RF24_none}},
    /*powerUp*/ {{RF24_none}, {RF24_none}},
    /*writeFast*/ {{RF24_buff, RF24_uint8, RF24_none}, {RF24_bool, RF24_none}},
    /*writeFastMulticast*/ {{RF24_buff, RF24_uint8, RF24_bool, RF24_none}, {RF24_bool, RF24_none}},
    /*writeBlocking*/ {{RF24_buff, RF24_uint8, RF24_uint32, RF24_none}, {RF24_bool, RF24_none}},
    /*txStandBy*/ {{RF24_none}, {RF24_bool, RF24_none}},
    /*txStandByTimeout*/ {{RF24_uint32, RF24_none}, {RF24_bool, RF24_none}},
    /*writeAckPayload*/ {{RF24_uint8, RF24_buff, RF24_uint8, RF24_none}, {RF24_none}},
    /*enableDynamicAck*/ {{RF24_none}, {RF24_none}},
    /*isAckPayloadAvailable*/ {{RF24_none}, {RF24_bool, RF24_none}},
    /*whatHappened*/ {{RF24_none}, {RF24_bool, RF24_bool, RF24_bool, RF24_none}},
    /*startFastWrite*/ {{RF24_buff, RF24_uint8, RF24_bool, RF24_none}, {RF24_none}},
    /*startWrite*/ {{RF24_buff, RF24_uint8, RF24_bool, RF24_none}, {RF24_none}},
    /*reUseTX*/ {{RF24_none}, {RF24_none}},
    /*flush_tx*/ {{RF24_none}, {RF24_uint8, RF24_none}},
    /*testCarrier*/ {{RF24_none}, {RF24_bool, RF24_none}},
    /*testRPD*/ {{RF24_none}, {RF24_bool, RF24_none}},
    /*isValid*/ {{RF24_none}, {RF24_bool, RF24_none}},
    /*maskIRQ*/ {{RF24_bool, RF24_bool, RF24_bool, RF24_none}, {RF24_none}},
    /*setAddressWidth*/ {{RF24_uint8, RF24_none}, {RF24_none}},
    /*closeReadingPipe*/ {{RF24_uint8, RF24_none}, {RF24_none}},
    /*setRetries*/ {{RF24_uint8, RF24_uint8, RF24_none}, {RF24_none}},
    /*setChannel*/ {{RF24_uint8, RF24_none}, {RF24_none}},
    /*setPayloadSize*/ {{RF24_uint8, RF24_none}, {RF24_none}},
    /*getPayloadSize*/ {{RF24_none}, {RF24_uint8, RF24_none}},
    /*getDynamicPayloadSize*/ {{RF24_none}, {RF24_uint8, RF24_none}},
    /*enableAckPayload*/ {{RF24_none}, {RF24_none}},
    /*enableDynamicPayloads*/ {{RF24_none}, {RF24_none}},
    /*isPVariant*/ {{RF24_none}, {RF24_bool, RF24_none}},
    /*setAutoAck*/ {{RF24_bool, RF24_none}, {RF24_none}},
    /*setAutoAckPipe*/ {{RF24_uint8, RF24_bool, RF24_none}, {RF24_none}},
    /*setPALevel*/ {{RF24_uint8, RF24_none}, {RF24_none}},
    /*getPALevel*/ {{RF24_none}, {RF24_uint8, RF24_none}},
    /*setDataRate*/ {{RF24_uint8, RF24_none}, {RF24_bool, RF24_none}},
    /*getDataRate*/  {{RF24_none}, {RF24_uint8, RF24_none}},
    /*setCRCLength*/ {{RF24_uint8, RF24_none}, {RF24_none}},
    /*getCRCLength*/ {{RF24_none}, {RF24_uint8, RF24_none}},
    /*disableCRC*/ {{RF24_none}, {RF24_none}},
    /*getFailureDetected*/ {{RF24_none}, {RF24_bool, RF24_none}},
    /*setFailureDetected*/ {{RF24_bool, RF24_none}, {RF24_none}},
    /*getProtocolVersion*/ {{RF24_none}, {RF24_uint8, RF24_none}},
};


int RF24Remote::parse(int paramtype, const uint8_t *p)
{
    uint8_t param_cnt_bool = 0;
    uint8_t param_cnt_uint8 = 0;
    uint8_t param_cnt_uint16 = 0;
    uint8_t param_cnt_uint32 = 0;
    uint8_t param_cnt_uint64 = 0;
    ERF24ParamType param;

    command = (ERF24Command)*p++;
    DPRINT("Parse Command:%d\n",command);
    while ((param = (ERF24ParamType)*p++) != RF24_none)
    {
        DPRINT("Parse Param:%d, ",param);
        switch (param)
        {
            case RF24_bool: DPRINT("%d", *(uint8_t *)p); p_bool[paramtype][param_cnt_bool++] = *(bool *)p++; break;
            case RF24_uint8: DPRINT("%d", *(uint8_t *)p); p_uint8[paramtype][param_cnt_uint8++] = *(uint8_t *)p++; break;
            case RF24_uint16: DPRINT("%d", *(uint16_t *)p); p_uint16[paramtype][param_cnt_uint16++] = *(uint16_t *)p; p+=2; break;
            case RF24_uint32: DPRINT("%d", *(uint32_t *)p); p_uint32[paramtype][param_cnt_uint32++] = *(uint32_t *)p; p+=4; break;
            case RF24_uint64: DPRINT("%llx", *(uint64_t *)p);p_uint64[paramtype][param_cnt_uint64++] = *(uint64_t *)p; p+=8; break;
            case RF24_buff:
                p_buf_ln[paramtype] = (uint8_t) *p++;
                p_buf_ln[paramtype] = p_buf_ln[paramtype]>MAX_BUFF?MAX_BUFF:p_buf_ln[paramtype];
                memcpy(p_buf[paramtype], p, p_buf_ln[paramtype]); p+=p_buf_ln[paramtype];
                DPRINT("%d", p_buf_ln[paramtype]);
                break;
            case RF24_none: break;
        } 
    DPRINT("\n");
    }
    return 0;
}

int RF24Remote::store(int paramtype, uint8_t *p, uint8_t *ln)
{
    uint8_t param_cnt_bool = 0;
    uint8_t param_cnt_uint8 = 0;
    uint8_t param_cnt_uint16 = 0;
    uint8_t param_cnt_uint32 = 0;
    uint8_t param_cnt_uint64 = 0;
    uint8_t cnt=0;
    uint8_t *start = p;

    DPRINT("Store Command:%d\n", command);
    
    *(ERF24Command *)p = command; p++;
    while ((*p = pgm_read_byte(&(RF24Commands[command][paramtype][cnt]))) != RF24_none)
    {
        cnt++;
        DPRINT("Store Param:%d, ",*p);
        switch (*p++)
        {
            case RF24_bool: *((bool *)p) = p_bool[paramtype][param_cnt_bool++]; DPRINT("%d", *(uint8_t *)p); p++; break;
            case RF24_uint8: *((uint8_t *)p) = p_uint8[paramtype][param_cnt_uint8++]; DPRINT("%d", *(uint8_t *)p); p++; break;
            case RF24_uint16: *((uint16_t *)p) = p_uint16[paramtype][param_cnt_uint16++]; DPRINT("%d", *(uint16_t *)p); p+=2; break;
            case RF24_uint32: *((uint32_t *)p) = p_uint32[paramtype][param_cnt_uint32++]; DPRINT("%d", *(uint32_t *)p); p+=4; break;
            case RF24_uint64: *((uint64_t *)p) = p_uint64[paramtype][param_cnt_uint64++]; DPRINT("%llx", *(uint64_t *)p); p+=8; break;
            case RF24_buff:
                DPRINT("%d", p_buf_ln[paramtype]);
                *((uint8_t *)p) = p_buf_ln[paramtype]; p++;
                memcpy(p, p_buf[paramtype], p_buf_ln[paramtype]); p+=p_buf_ln[paramtype];
                break;
        }
        DPRINT("\n");
    }
    p++;
    *ln = p - start;
    DPRINT("Store ln:%d '" , *ln);
    for (cnt=0; cnt<*ln; cnt++)
        DPRINT("%02X ", start[cnt]);
    DPRINT("'\n");
    return 0;
}


