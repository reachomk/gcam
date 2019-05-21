.class public Lcom/adobe/xmp/impl/ISO8601Converter;
.super Ljava/lang/Object;
.source "ISO8601Converter.java"


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mWrapped:Landroid/content/res/TypedArray;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11266
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Landroid/content/res/TypedArray;)V
    .locals 0

    .prologue
    .line 12062
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12063
    iput-object p1, p0, Lcom/adobe/xmp/impl/ISO8601Converter;->mContext:Landroid/content/Context;

    .line 12064
    iput-object p2, p0, Lcom/adobe/xmp/impl/ISO8601Converter;->mWrapped:Landroid/content/res/TypedArray;

    .line 12065
    return-void
.end method

.method public static obtainStyledAttributes$51662RJ4E9NMIP1FCDNMST35DPQ2UGRFDPQ6AU3K7D4LMI999HGMSP3IDTKM8BRJELO70RRIEGNNCDPFETKM8PR5EGNL8QBEEHA7IS35CH0N4SJ1F4TG____(Landroid/content/Context;I[I)Lcom/adobe/xmp/impl/ISO8601Converter;
    .locals 2

    .prologue
    .line 12059
    new-instance v0, Lcom/adobe/xmp/impl/ISO8601Converter;

    invoke-virtual {p0, p1, p2}, Landroid/content/Context;->obtainStyledAttributes(I[I)Landroid/content/res/TypedArray;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/adobe/xmp/impl/ISO8601Converter;-><init>(Landroid/content/Context;Landroid/content/res/TypedArray;)V

    return-object v0
.end method

.method public static obtainStyledAttributes$51662RJ4E9NMIP1FCDNMST35DPQ2UGRFDPQ6AU3K7D662RJ4E9NMIP1FELQ6IR1F85Q78SJ9C9QN8PAJCLQ3MMQ955662RJ4E9NMIP1FEDQN0S3FE9Q2UTHN5TRMIP37CLQ2UL39DPQ58UBGCLI42SJIC5SJM___(Landroid/content/Context;Landroid/util/AttributeSet;[I)Lcom/adobe/xmp/impl/ISO8601Converter;
    .locals 2

    .prologue
    .line 12049
    new-instance v0, Lcom/adobe/xmp/impl/ISO8601Converter;

    invoke-virtual {p0, p1, p2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/adobe/xmp/impl/ISO8601Converter;-><init>(Landroid/content/Context;Landroid/content/res/TypedArray;)V

    return-object v0
.end method

.method public static obtainStyledAttributes$51662RJ4E9NMIP1FCDNMST35DPQ2UGRFDPQ6AU3K7D662RJ4E9NMIP1FELQ6IR1F85Q78SJ9C9QN8PAJCLQ3MMQ9954IIJ31DPI74RR9CGNN6TBGE1NN4T1FEORIUTR9CHJMAT1FAHKMST2KF5O6AP21E9P62U9R(Landroid/content/Context;Landroid/util/AttributeSet;[III)Lcom/adobe/xmp/impl/ISO8601Converter;
    .locals 2

    .prologue
    .line 12054
    new-instance v0, Lcom/adobe/xmp/impl/ISO8601Converter;

    .line 12055
    invoke-virtual {p0, p1, p2, p3, p4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/adobe/xmp/impl/ISO8601Converter;-><init>(Landroid/content/Context;Landroid/content/res/TypedArray;)V

    return-object v0
.end method

.method public static parse(Ljava/lang/String;Lcom/adobe/xmp/XMPDateTime;)Lcom/adobe/xmp/XMPDateTime;
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/adobe/xmp/XMPException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x1

    const/16 v9, 0x3a

    const/4 v2, 0x0

    const/16 v8, 0x2d

    const/4 v7, 0x5

    .line 89
    invoke-static {p0}, Lcom/adobe/xmp/impl/ParameterAsserts;->assertNotNull(Ljava/lang/Object;)V

    .line 91
    new-instance v4, Lcom/adobe/xmp/impl/ParseState;

    invoke-direct {v4, p0}, Lcom/adobe/xmp/impl/ParseState;-><init>(Ljava/lang/String;)V

    .line 95
    invoke-virtual {v4, v2}, Lcom/adobe/xmp/impl/ParseState;->ch(I)C

    move-result v0

    const/16 v3, 0x54

    if-eq v0, v3, :cond_1

    .line 96
    invoke-virtual {v4}, Lcom/adobe/xmp/impl/ParseState;->length()I

    move-result v0

    const/4 v3, 0x2

    if-lt v0, v3, :cond_0

    invoke-virtual {v4, v1}, Lcom/adobe/xmp/impl/ParseState;->ch(I)C

    move-result v0

    if-eq v0, v9, :cond_1

    .line 97
    :cond_0
    invoke-virtual {v4}, Lcom/adobe/xmp/impl/ParseState;->length()I

    move-result v0

    const/4 v3, 0x3

    if-lt v0, v3, :cond_3

    const/4 v0, 0x2

    invoke-virtual {v4, v0}, Lcom/adobe/xmp/impl/ParseState;->ch(I)C

    move-result v0

    if-ne v0, v9, :cond_3

    :cond_1
    move v3, v1

    .line 99
    :goto_0
    if-nez v3, :cond_b

    .line 101
    invoke-virtual {v4, v2}, Lcom/adobe/xmp/impl/ParseState;->ch(I)C

    move-result v0

    if-ne v0, v8, :cond_2

    .line 103
    invoke-virtual {v4}, Lcom/adobe/xmp/impl/ParseState;->skip()V

    .line 108
    :cond_2
    const-string v0, "Invalid year in date string"

    const/16 v5, 0x270f

    invoke-virtual {v4, v0, v5}, Lcom/adobe/xmp/impl/ParseState;->gatherInt(Ljava/lang/String;I)I

    move-result v0

    .line 109
    invoke-virtual {v4}, Lcom/adobe/xmp/impl/ParseState;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-virtual {v4}, Lcom/adobe/xmp/impl/ParseState;->ch()C

    move-result v5

    if-eq v5, v8, :cond_4

    .line 111
    new-instance v0, Lcom/adobe/xmp/XMPException;

    const-string v1, "Invalid date string, after year"

    invoke-direct {v0, v1, v7}, Lcom/adobe/xmp/XMPException;-><init>(Ljava/lang/String;I)V

    throw v0

    :cond_3
    move v3, v2

    .line 97
    goto :goto_0

    .line 114
    :cond_4
    invoke-virtual {v4, v2}, Lcom/adobe/xmp/impl/ParseState;->ch(I)C

    move-result v5

    if-ne v5, v8, :cond_5

    .line 116
    neg-int v0, v0

    .line 118
    :cond_5
    invoke-interface {p1, v0}, Lcom/adobe/xmp/XMPDateTime;->setYear(I)V

    .line 119
    invoke-virtual {v4}, Lcom/adobe/xmp/impl/ParseState;->hasNext()Z

    move-result v0

    if-nez v0, :cond_7

    .line 273
    :cond_6
    return-object p1

    .line 123
    :cond_7
    invoke-virtual {v4}, Lcom/adobe/xmp/impl/ParseState;->skip()V

    .line 127
    const-string v0, "Invalid month in date string"

    const/16 v5, 0xc

    invoke-virtual {v4, v0, v5}, Lcom/adobe/xmp/impl/ParseState;->gatherInt(Ljava/lang/String;I)I

    move-result v0

    .line 128
    invoke-virtual {v4}, Lcom/adobe/xmp/impl/ParseState;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_8

    invoke-virtual {v4}, Lcom/adobe/xmp/impl/ParseState;->ch()C

    move-result v5

    if-eq v5, v8, :cond_8

    .line 130
    new-instance v0, Lcom/adobe/xmp/XMPException;

    const-string v1, "Invalid date string, after month"

    invoke-direct {v0, v1, v7}, Lcom/adobe/xmp/XMPException;-><init>(Ljava/lang/String;I)V

    throw v0

    .line 132
    :cond_8
    invoke-interface {p1, v0}, Lcom/adobe/xmp/XMPDateTime;->setMonth(I)V

    .line 133
    invoke-virtual {v4}, Lcom/adobe/xmp/impl/ParseState;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 137
    invoke-virtual {v4}, Lcom/adobe/xmp/impl/ParseState;->skip()V

    .line 141
    const-string v0, "Invalid day in date string"

    const/16 v5, 0x1f

    invoke-virtual {v4, v0, v5}, Lcom/adobe/xmp/impl/ParseState;->gatherInt(Ljava/lang/String;I)I

    move-result v0

    .line 142
    invoke-virtual {v4}, Lcom/adobe/xmp/impl/ParseState;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_9

    invoke-virtual {v4}, Lcom/adobe/xmp/impl/ParseState;->ch()C

    move-result v5

    const/16 v6, 0x54

    if-eq v5, v6, :cond_9

    .line 144
    new-instance v0, Lcom/adobe/xmp/XMPException;

    const-string v1, "Invalid date string, after day"

    invoke-direct {v0, v1, v7}, Lcom/adobe/xmp/XMPException;-><init>(Ljava/lang/String;I)V

    throw v0

    .line 146
    :cond_9
    invoke-interface {p1, v0}, Lcom/adobe/xmp/XMPDateTime;->setDay(I)V

    .line 147
    invoke-virtual {v4}, Lcom/adobe/xmp/impl/ParseState;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 159
    :goto_1
    invoke-virtual {v4}, Lcom/adobe/xmp/impl/ParseState;->ch()C

    move-result v0

    const/16 v5, 0x54

    if-ne v0, v5, :cond_c

    .line 161
    invoke-virtual {v4}, Lcom/adobe/xmp/impl/ParseState;->skip()V

    .line 171
    :cond_a
    const-string v0, "Invalid hour in date string"

    const/16 v3, 0x17

    invoke-virtual {v4, v0, v3}, Lcom/adobe/xmp/impl/ParseState;->gatherInt(Ljava/lang/String;I)I

    move-result v0

    .line 172
    invoke-virtual {v4}, Lcom/adobe/xmp/impl/ParseState;->ch()C

    move-result v3

    if-eq v3, v9, :cond_d

    .line 174
    new-instance v0, Lcom/adobe/xmp/XMPException;

    const-string v1, "Invalid date string, after hour"

    invoke-direct {v0, v1, v7}, Lcom/adobe/xmp/XMPException;-><init>(Ljava/lang/String;I)V

    throw v0

    .line 155
    :cond_b
    invoke-interface {p1, v1}, Lcom/adobe/xmp/XMPDateTime;->setMonth(I)V

    .line 156
    invoke-interface {p1, v1}, Lcom/adobe/xmp/XMPDateTime;->setDay(I)V

    goto :goto_1

    .line 163
    :cond_c
    if-nez v3, :cond_a

    .line 165
    new-instance v0, Lcom/adobe/xmp/XMPException;

    const-string v1, "Invalid date string, missing \'T\' after date"

    invoke-direct {v0, v1, v7}, Lcom/adobe/xmp/XMPException;-><init>(Ljava/lang/String;I)V

    throw v0

    .line 176
    :cond_d
    invoke-interface {p1, v0}, Lcom/adobe/xmp/XMPDateTime;->setHour(I)V

    .line 179
    invoke-virtual {v4}, Lcom/adobe/xmp/impl/ParseState;->skip()V

    .line 183
    const-string v0, "Invalid minute in date string"

    const/16 v3, 0x3b

    invoke-virtual {v4, v0, v3}, Lcom/adobe/xmp/impl/ParseState;->gatherInt(Ljava/lang/String;I)I

    move-result v0

    .line 184
    invoke-virtual {v4}, Lcom/adobe/xmp/impl/ParseState;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_e

    .line 185
    invoke-virtual {v4}, Lcom/adobe/xmp/impl/ParseState;->ch()C

    move-result v3

    if-eq v3, v9, :cond_e

    invoke-virtual {v4}, Lcom/adobe/xmp/impl/ParseState;->ch()C

    move-result v3

    const/16 v5, 0x5a

    if-eq v3, v5, :cond_e

    invoke-virtual {v4}, Lcom/adobe/xmp/impl/ParseState;->ch()C

    move-result v3

    const/16 v5, 0x2b

    if-eq v3, v5, :cond_e

    invoke-virtual {v4}, Lcom/adobe/xmp/impl/ParseState;->ch()C

    move-result v3

    if-eq v3, v8, :cond_e

    .line 187
    new-instance v0, Lcom/adobe/xmp/XMPException;

    const-string v1, "Invalid date string, after minute"

    invoke-direct {v0, v1, v7}, Lcom/adobe/xmp/XMPException;-><init>(Ljava/lang/String;I)V

    throw v0

    .line 189
    :cond_e
    invoke-interface {p1, v0}, Lcom/adobe/xmp/XMPDateTime;->setMinute(I)V

    .line 191
    invoke-virtual {v4}, Lcom/adobe/xmp/impl/ParseState;->ch()C

    move-result v0

    if-ne v0, v9, :cond_13

    .line 193
    invoke-virtual {v4}, Lcom/adobe/xmp/impl/ParseState;->skip()V

    .line 194
    const-string v0, "Invalid whole seconds in date string"

    const/16 v3, 0x3b

    invoke-virtual {v4, v0, v3}, Lcom/adobe/xmp/impl/ParseState;->gatherInt(Ljava/lang/String;I)I

    move-result v0

    .line 195
    invoke-virtual {v4}, Lcom/adobe/xmp/impl/ParseState;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_f

    invoke-virtual {v4}, Lcom/adobe/xmp/impl/ParseState;->ch()C

    move-result v3

    const/16 v5, 0x2e

    if-eq v3, v5, :cond_f

    invoke-virtual {v4}, Lcom/adobe/xmp/impl/ParseState;->ch()C

    move-result v3

    const/16 v5, 0x5a

    if-eq v3, v5, :cond_f

    .line 196
    invoke-virtual {v4}, Lcom/adobe/xmp/impl/ParseState;->ch()C

    move-result v3

    const/16 v5, 0x2b

    if-eq v3, v5, :cond_f

    invoke-virtual {v4}, Lcom/adobe/xmp/impl/ParseState;->ch()C

    move-result v3

    if-eq v3, v8, :cond_f

    .line 198
    new-instance v0, Lcom/adobe/xmp/XMPException;

    const-string v1, "Invalid date string, after whole seconds"

    invoke-direct {v0, v1, v7}, Lcom/adobe/xmp/XMPException;-><init>(Ljava/lang/String;I)V

    throw v0

    .line 201
    :cond_f
    invoke-interface {p1, v0}, Lcom/adobe/xmp/XMPDateTime;->setSecond(I)V

    .line 202
    invoke-virtual {v4}, Lcom/adobe/xmp/impl/ParseState;->ch()C

    move-result v0

    const/16 v3, 0x2e

    if-ne v0, v3, :cond_13

    .line 204
    invoke-virtual {v4}, Lcom/adobe/xmp/impl/ParseState;->skip()V

    .line 205
    invoke-virtual {v4}, Lcom/adobe/xmp/impl/ParseState;->pos()I

    move-result v0

    .line 206
    const-string v3, "Invalid fractional seconds in date string"

    const v5, 0x3b9ac9ff

    invoke-virtual {v4, v3, v5}, Lcom/adobe/xmp/impl/ParseState;->gatherInt(Ljava/lang/String;I)I

    move-result v3

    .line 207
    invoke-virtual {v4}, Lcom/adobe/xmp/impl/ParseState;->ch()C

    move-result v5

    const/16 v6, 0x5a

    if-eq v5, v6, :cond_10

    invoke-virtual {v4}, Lcom/adobe/xmp/impl/ParseState;->ch()C

    move-result v5

    const/16 v6, 0x2b

    if-eq v5, v6, :cond_10

    invoke-virtual {v4}, Lcom/adobe/xmp/impl/ParseState;->ch()C

    move-result v5

    if-eq v5, v8, :cond_10

    .line 209
    new-instance v0, Lcom/adobe/xmp/XMPException;

    const-string v1, "Invalid date string, after fractional second"

    invoke-direct {v0, v1, v7}, Lcom/adobe/xmp/XMPException;-><init>(Ljava/lang/String;I)V

    throw v0

    .line 212
    :cond_10
    invoke-virtual {v4}, Lcom/adobe/xmp/impl/ParseState;->pos()I

    move-result v5

    sub-int v0, v5, v0

    .line 213
    :goto_2
    const/16 v5, 0x9

    if-le v0, v5, :cond_11

    .line 215
    div-int/lit8 v3, v3, 0xa

    .line 213
    add-int/lit8 v0, v0, -0x1

    goto :goto_2

    .line 217
    :cond_11
    :goto_3
    const/16 v5, 0x9

    if-ge v0, v5, :cond_12

    .line 219
    mul-int/lit8 v3, v3, 0xa

    .line 217
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 221
    :cond_12
    invoke-interface {p1, v3}, Lcom/adobe/xmp/XMPDateTime;->setNanoSecond(I)V

    .line 228
    :cond_13
    invoke-virtual {v4}, Lcom/adobe/xmp/impl/ParseState;->ch()C

    move-result v0

    const/16 v3, 0x5a

    if-ne v0, v3, :cond_14

    .line 230
    invoke-virtual {v4}, Lcom/adobe/xmp/impl/ParseState;->skip()V

    move v0, v2

    move v1, v2

    .line 263
    :goto_4
    mul-int/lit16 v2, v2, 0xe10

    mul-int/lit16 v2, v2, 0x3e8

    mul-int/lit8 v0, v0, 0x3c

    mul-int/lit16 v0, v0, 0x3e8

    add-int/2addr v0, v2

    mul-int/2addr v0, v1

    .line 264
    new-instance v1, Ljava/util/SimpleTimeZone;

    const-string v2, ""

    invoke-direct {v1, v0, v2}, Ljava/util/SimpleTimeZone;-><init>(ILjava/lang/String;)V

    invoke-interface {p1, v1}, Lcom/adobe/xmp/XMPDateTime;->setTimeZone(Ljava/util/TimeZone;)V

    .line 267
    invoke-virtual {v4}, Lcom/adobe/xmp/impl/ParseState;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 269
    new-instance v0, Lcom/adobe/xmp/XMPException;

    const-string v1, "Invalid date string, extra chars at end"

    invoke-direct {v0, v1, v7}, Lcom/adobe/xmp/XMPException;-><init>(Ljava/lang/String;I)V

    throw v0

    .line 232
    :cond_14
    invoke-virtual {v4}, Lcom/adobe/xmp/impl/ParseState;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_18

    .line 234
    invoke-virtual {v4}, Lcom/adobe/xmp/impl/ParseState;->ch()C

    move-result v0

    const/16 v2, 0x2b

    if-ne v0, v2, :cond_15

    move v0, v1

    .line 248
    :goto_5
    invoke-virtual {v4}, Lcom/adobe/xmp/impl/ParseState;->skip()V

    .line 250
    const-string v1, "Invalid time zone hour in date string"

    const/16 v2, 0x17

    invoke-virtual {v4, v1, v2}, Lcom/adobe/xmp/impl/ParseState;->gatherInt(Ljava/lang/String;I)I

    move-result v2

    .line 251
    invoke-virtual {v4}, Lcom/adobe/xmp/impl/ParseState;->ch()C

    move-result v1

    if-eq v1, v9, :cond_17

    .line 253
    new-instance v0, Lcom/adobe/xmp/XMPException;

    const-string v1, "Invalid date string, after time zone hour"

    invoke-direct {v0, v1, v7}, Lcom/adobe/xmp/XMPException;-><init>(Ljava/lang/String;I)V

    throw v0

    .line 238
    :cond_15
    invoke-virtual {v4}, Lcom/adobe/xmp/impl/ParseState;->ch()C

    move-result v0

    if-ne v0, v8, :cond_16

    .line 240
    const/4 v0, -0x1

    goto :goto_5

    .line 244
    :cond_16
    new-instance v0, Lcom/adobe/xmp/XMPException;

    const-string v1, "Time zone must begin with \'Z\', \'+\', or \'-\'"

    invoke-direct {v0, v1, v7}, Lcom/adobe/xmp/XMPException;-><init>(Ljava/lang/String;I)V

    throw v0

    .line 256
    :cond_17
    invoke-virtual {v4}, Lcom/adobe/xmp/impl/ParseState;->skip()V

    .line 259
    const-string v1, "Invalid time zone minute in date string"

    const/16 v3, 0x3b

    invoke-virtual {v4, v1, v3}, Lcom/adobe/xmp/impl/ParseState;->gatherInt(Ljava/lang/String;I)I

    move-result v1

    move v10, v1

    move v1, v0

    move v0, v10

    goto :goto_4

    :cond_18
    move v0, v2

    move v1, v2

    goto :goto_4
.end method

.method public static provideImageCaptureCommand$51666RRD5TGMSP3IDTKM8BR3C5MMASJ15TNMSP9FEOP2US38DTQ6UBR3DTMMQOBECHPIUKRKC5Q6AL3IC5HMMQBECT4MQOB7CL1M2S3KELP6AGRFDLMM2RJ47CKKOORFDKNM2RJ4E9NMIP1FCDGMQPBIC4NMURJ55TR34BRGD1NN8RPF95MM2PR58DGN0T3LE9IK6RRDDLGMSP1R(Lcom/google/common/primitives/Floats;)Lcom/android/camera/one/v2/photo/ImageCaptureCommand;
    .locals 0

    .prologue
    .line 11386
    return-object p0
.end method

.method public static provideImageCaptureStateTracker$51666RRD5TGMSP3IDTKM8BR3C5MMASJ15TNMSP9FEOP2US38DTQ6UBR3DTMMQOBECHPIUKRKC5Q6AL3IC5HMMQBECT4MQOB7CL1M2S3KELP6AGRFDLMM2RJ47CKKOORFDKNM2RJ4E9NMIP1FCDGMQPBIC4NMURJ55TR34BRGD1NN8RPF95MM2PR58DGN0T3LE9IL6T31EHIL8SJ1CDLMASHR(Lcom/google/common/primitives/Floats;)Lcom/android/camera/one/v2/photo/ImageCaptureStateTracker;
    .locals 0

    .prologue
    .line 11393
    return-object p0
.end method

.method public static provideStateTrackingImageCaptureCommand$51666RRD5TGMSP3IDTKM8BR3C5MMASJ15TNMSP9FEOP2US38DTQ6UBR3DTMMQOBECHPIUGBLEHNKCR31EDK4GP3IA1M7ASQ9DLGMEPA3C5O78TBICL1MURBDC5N68HJ1CDQ6USJP7D666RRD5TGMSP3IDTKM8BR3C5MMASJ15TNMSP9FEOP2US38DTQ6UBR3DTMMQOBECHPIUKR9DPJMOPA6DHGN6Q23DTMMQOBECH362ORKDTP7IEQCCDNMQBR1DPI74RR9CGNM6OBDCLP62BRFDPIIUTHI5TO6GRRKDSNM6RRDDLGMSP3J5T96ASRKE9KM6T35CH17ASJJEH1MURBDC5N68HJ1CDQ6USJP7CKKOORFDKNM2RJ4E9NMIP1FCDGMQPBIC4NMURJ55TR34BRGD1NN8RPFCDNMQRB1DPI76BQJEHGN8PAKE9GM6QR9DPJKIRB1CTIK6OBGEHQN4PA3DTMMQOBECGTG____(Lcom/android/camera/one/v2/photo/commands/AutoFlashHdrPlusImageCaptureCommandFactory;Lcom/android/camera/one/v2/photo/commands/SingleFlashCommandFactory;Lcom/google/common/primitives/Booleans;)Lcom/google/common/primitives/Floats;
    .locals 3

    .prologue
    .line 11406
    invoke-virtual {p1}, Lcom/android/camera/one/v2/photo/commands/SingleFlashCommandFactory;->create()Lcom/android/camera/one/v2/photo/ImageCaptureCommand;

    move-result-object v0

    .line 11407
    const/4 v1, 0x1

    const/4 v2, 0x3

    invoke-virtual {p2, v1, v2}, Lcom/google/common/primitives/Booleans;->create(II)Lcom/android/camera/one/v2/photo/ImageCaptureCommand;

    move-result-object v1

    .line 11408
    new-instance v2, Lcom/google/common/primitives/Floats;

    .line 11409
    invoke-virtual {p0, v0, v1}, Lcom/android/camera/one/v2/photo/commands/AutoFlashHdrPlusImageCaptureCommandFactory;->create(Lcom/android/camera/one/v2/photo/ImageCaptureCommand;Lcom/android/camera/one/v2/photo/ImageCaptureCommand;)Lcom/android/camera/one/v2/photo/ImageCaptureCommand;

    move-result-object v0

    invoke-direct {v2, v0}, Lcom/google/common/primitives/Floats;-><init>(Lcom/android/camera/one/v2/photo/ImageCaptureCommand;)V

    .line 11408
    return-object v2
.end method

.method public static render(Lcom/adobe/xmp/XMPDateTime;)Ljava/lang/String;
    .locals 9

    .prologue
    const v8, 0x36ee80

    .line 311
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 314
    new-instance v1, Ljava/text/DecimalFormat;

    const-string v2, "0000"

    new-instance v3, Ljava/text/DecimalFormatSymbols;

    sget-object v4, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-direct {v3, v4}, Ljava/text/DecimalFormatSymbols;-><init>(Ljava/util/Locale;)V

    invoke-direct {v1, v2, v3}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;Ljava/text/DecimalFormatSymbols;)V

    .line 315
    invoke-interface {p0}, Lcom/adobe/xmp/XMPDateTime;->getYear()I

    move-result v2

    int-to-long v2, v2

    invoke-virtual {v1, v2, v3}, Ljava/text/DecimalFormat;->format(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 316
    invoke-interface {p0}, Lcom/adobe/xmp/XMPDateTime;->getMonth()I

    move-result v2

    if-nez v2, :cond_0

    .line 318
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    .line 377
    :goto_0
    return-object v0

    .line 322
    :cond_0
    const-string v2, "\'-\'00"

    invoke-virtual {v1, v2}, Ljava/text/DecimalFormat;->applyPattern(Ljava/lang/String;)V

    .line 323
    invoke-interface {p0}, Lcom/adobe/xmp/XMPDateTime;->getMonth()I

    move-result v2

    int-to-long v2, v2

    invoke-virtual {v1, v2, v3}, Ljava/text/DecimalFormat;->format(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 324
    invoke-interface {p0}, Lcom/adobe/xmp/XMPDateTime;->getDay()I

    move-result v2

    if-nez v2, :cond_1

    .line 326
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 330
    :cond_1
    invoke-interface {p0}, Lcom/adobe/xmp/XMPDateTime;->getDay()I

    move-result v2

    int-to-long v2, v2

    invoke-virtual {v1, v2, v3}, Ljava/text/DecimalFormat;->format(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 333
    invoke-interface {p0}, Lcom/adobe/xmp/XMPDateTime;->getHour()I

    move-result v2

    if-nez v2, :cond_2

    .line 334
    invoke-interface {p0}, Lcom/adobe/xmp/XMPDateTime;->getMinute()I

    move-result v2

    if-nez v2, :cond_2

    .line 335
    invoke-interface {p0}, Lcom/adobe/xmp/XMPDateTime;->getSecond()I

    move-result v2

    if-nez v2, :cond_2

    .line 336
    invoke-interface {p0}, Lcom/adobe/xmp/XMPDateTime;->getNanoSecond()I

    move-result v2

    if-nez v2, :cond_2

    .line 337
    invoke-interface {p0}, Lcom/adobe/xmp/XMPDateTime;->getTimeZone()Ljava/util/TimeZone;

    move-result-object v2

    if-eqz v2, :cond_5

    invoke-interface {p0}, Lcom/adobe/xmp/XMPDateTime;->getTimeZone()Ljava/util/TimeZone;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/TimeZone;->getRawOffset()I

    move-result v2

    if-eqz v2, :cond_5

    .line 340
    :cond_2
    const/16 v2, 0x54

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 341
    const-string v2, "00"

    invoke-virtual {v1, v2}, Ljava/text/DecimalFormat;->applyPattern(Ljava/lang/String;)V

    .line 342
    invoke-interface {p0}, Lcom/adobe/xmp/XMPDateTime;->getHour()I

    move-result v2

    int-to-long v2, v2

    invoke-virtual {v1, v2, v3}, Ljava/text/DecimalFormat;->format(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 343
    const/16 v2, 0x3a

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 344
    invoke-interface {p0}, Lcom/adobe/xmp/XMPDateTime;->getMinute()I

    move-result v2

    int-to-long v2, v2

    invoke-virtual {v1, v2, v3}, Ljava/text/DecimalFormat;->format(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 347
    invoke-interface {p0}, Lcom/adobe/xmp/XMPDateTime;->getSecond()I

    move-result v2

    if-nez v2, :cond_3

    invoke-interface {p0}, Lcom/adobe/xmp/XMPDateTime;->getNanoSecond()I

    move-result v2

    if-eqz v2, :cond_4

    .line 349
    :cond_3
    invoke-interface {p0}, Lcom/adobe/xmp/XMPDateTime;->getSecond()I

    move-result v2

    int-to-double v2, v2

    invoke-interface {p0}, Lcom/adobe/xmp/XMPDateTime;->getNanoSecond()I

    move-result v4

    int-to-double v4, v4

    const-wide v6, 0x41cdcd6500000000L    # 1.0E9

    div-double/2addr v4, v6

    add-double/2addr v2, v4

    .line 351
    const-string v4, ":00.#########"

    invoke-virtual {v1, v4}, Ljava/text/DecimalFormat;->applyPattern(Ljava/lang/String;)V

    .line 352
    invoke-virtual {v1, v2, v3}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 356
    :cond_4
    invoke-interface {p0}, Lcom/adobe/xmp/XMPDateTime;->getTimeZone()Ljava/util/TimeZone;

    move-result-object v2

    if-eqz v2, :cond_5

    .line 359
    invoke-interface {p0}, Lcom/adobe/xmp/XMPDateTime;->getCalendar()Ljava/util/Calendar;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v2

    .line 360
    invoke-interface {p0}, Lcom/adobe/xmp/XMPDateTime;->getTimeZone()Ljava/util/TimeZone;

    move-result-object v4

    invoke-virtual {v4, v2, v3}, Ljava/util/TimeZone;->getOffset(J)I

    move-result v2

    .line 361
    if-nez v2, :cond_6

    .line 364
    const/16 v1, 0x5a

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 377
    :cond_5
    :goto_1
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 368
    :cond_6
    div-int v3, v2, v8

    .line 369
    rem-int/2addr v2, v8

    const v4, 0xea60

    div-int/2addr v2, v4

    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v2

    .line 370
    const-string v4, "+00;-00"

    invoke-virtual {v1, v4}, Ljava/text/DecimalFormat;->applyPattern(Ljava/lang/String;)V

    .line 371
    int-to-long v4, v3

    invoke-virtual {v1, v4, v5}, Ljava/text/DecimalFormat;->format(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 372
    const-string v3, ":00"

    invoke-virtual {v1, v3}, Ljava/text/DecimalFormat;->applyPattern(Ljava/lang/String;)V

    .line 373
    int-to-long v2, v2

    invoke-virtual {v1, v2, v3}, Ljava/text/DecimalFormat;->format(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_1
.end method


# virtual methods
.method public getBoolean(IZ)Z
    .locals 1

    .prologue
    .line 12116
    iget-object v0, p0, Lcom/adobe/xmp/impl/ISO8601Converter;->mWrapped:Landroid/content/res/TypedArray;

    invoke-virtual {v0, p1, p2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v0

    return v0
.end method

.method public getColor(II)I
    .locals 1

    .prologue
    .line 12128
    iget-object v0, p0, Lcom/adobe/xmp/impl/ISO8601Converter;->mWrapped:Landroid/content/res/TypedArray;

    invoke-virtual {v0, p1, p2}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v0

    return v0
.end method

.method public getColorStateList(I)Landroid/content/res/ColorStateList;
    .locals 2

    .prologue
    .line 12132
    iget-object v0, p0, Lcom/adobe/xmp/impl/ISO8601Converter;->mWrapped:Landroid/content/res/TypedArray;

    invoke-virtual {v0, p1}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 12133
    iget-object v0, p0, Lcom/adobe/xmp/impl/ISO8601Converter;->mWrapped:Landroid/content/res/TypedArray;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v0

    .line 12134
    if-eqz v0, :cond_0

    .line 12135
    iget-object v1, p0, Lcom/adobe/xmp/impl/ISO8601Converter;->mContext:Landroid/content/Context;

    .line 12136
    invoke-static {v1, v0}, Landroid/support/v7/content/res/AppCompatResources;->getColorStateList(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    move-result-object v0

    .line 12137
    if-eqz v0, :cond_0

    .line 12142
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/adobe/xmp/impl/ISO8601Converter;->mWrapped:Landroid/content/res/TypedArray;

    invoke-virtual {v0, p1}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v0

    goto :goto_0
.end method

.method public getDimensionPixelOffset(II)I
    .locals 1

    .prologue
    .line 12154
    iget-object v0, p0, Lcom/adobe/xmp/impl/ISO8601Converter;->mWrapped:Landroid/content/res/TypedArray;

    invoke-virtual {v0, p1, p2}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v0

    return v0
.end method

.method public getDimensionPixelSize(II)I
    .locals 1

    .prologue
    .line 12158
    iget-object v0, p0, Lcom/adobe/xmp/impl/ISO8601Converter;->mWrapped:Landroid/content/res/TypedArray;

    invoke-virtual {v0, p1, p2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v0

    return v0
.end method

.method public getDrawable(I)Landroid/graphics/drawable/Drawable;
    .locals 2

    .prologue
    .line 12068
    iget-object v0, p0, Lcom/adobe/xmp/impl/ISO8601Converter;->mWrapped:Landroid/content/res/TypedArray;

    invoke-virtual {v0, p1}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 12069
    iget-object v0, p0, Lcom/adobe/xmp/impl/ISO8601Converter;->mWrapped:Landroid/content/res/TypedArray;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v0

    .line 12070
    if-eqz v0, :cond_0

    .line 12071
    iget-object v1, p0, Lcom/adobe/xmp/impl/ISO8601Converter;->mContext:Landroid/content/Context;

    invoke-static {v1, v0}, Landroid/support/v7/content/res/AppCompatResources;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 12074
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/adobe/xmp/impl/ISO8601Converter;->mWrapped:Landroid/content/res/TypedArray;

    invoke-virtual {v0, p1}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto :goto_0
.end method

.method public getFloat(IF)F
    .locals 2

    .prologue
    .line 12124
    iget-object v0, p0, Lcom/adobe/xmp/impl/ISO8601Converter;->mWrapped:Landroid/content/res/TypedArray;

    const/high16 v1, -0x40800000    # -1.0f

    invoke-virtual {v0, p1, v1}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v0

    return v0
.end method

.method public getInt(II)I
    .locals 1

    .prologue
    .line 12120
    iget-object v0, p0, Lcom/adobe/xmp/impl/ISO8601Converter;->mWrapped:Landroid/content/res/TypedArray;

    invoke-virtual {v0, p1, p2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v0

    return v0
.end method

.method public getInteger(II)I
    .locals 1

    .prologue
    .line 12146
    iget-object v0, p0, Lcom/adobe/xmp/impl/ISO8601Converter;->mWrapped:Landroid/content/res/TypedArray;

    invoke-virtual {v0, p1, p2}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v0

    return v0
.end method

.method public getLayoutDimension(II)I
    .locals 2

    .prologue
    .line 12166
    iget-object v0, p0, Lcom/adobe/xmp/impl/ISO8601Converter;->mWrapped:Landroid/content/res/TypedArray;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/content/res/TypedArray;->getLayoutDimension(II)I

    move-result v0

    return v0
.end method

.method public getResourceId(II)I
    .locals 1

    .prologue
    .line 12174
    iget-object v0, p0, Lcom/adobe/xmp/impl/ISO8601Converter;->mWrapped:Landroid/content/res/TypedArray;

    invoke-virtual {v0, p1, p2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v0

    return v0
.end method

.method public getText(I)Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 12104
    iget-object v0, p0, Lcom/adobe/xmp/impl/ISO8601Converter;->mWrapped:Landroid/content/res/TypedArray;

    invoke-virtual {v0, p1}, Landroid/content/res/TypedArray;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method public hasValue(I)Z
    .locals 1

    .prologue
    .line 12198
    iget-object v0, p0, Lcom/adobe/xmp/impl/ISO8601Converter;->mWrapped:Landroid/content/res/TypedArray;

    invoke-virtual {v0, p1}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v0

    return v0
.end method

.method public onChanged()V
    .locals 0

    .prologue
    .line 11269
    return-void
.end method

.method public recycle()V
    .locals 1

    .prologue
    .line 12210
    iget-object v0, p0, Lcom/adobe/xmp/impl/ISO8601Converter;->mWrapped:Landroid/content/res/TypedArray;

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 12211
    return-void
.end method
