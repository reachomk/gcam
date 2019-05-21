.class public final Lcom/adobe/xmp/impl/XMPDateTimeImpl;
.super Ljava/lang/Object;
.source "XMPDateTimeImpl.java"

# interfaces
.implements Lcom/adobe/xmp/XMPDateTime;


# instance fields
.field private day:I

.field private hour:I

.field private minute:I

.field private month:I

.field private nanoSeconds:I

.field private second:I

.field private timeZone:Ljava/util/TimeZone;

.field private year:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    iput v0, p0, Lcom/adobe/xmp/impl/XMPDateTimeImpl;->year:I

    .line 34
    iput v0, p0, Lcom/adobe/xmp/impl/XMPDateTimeImpl;->month:I

    .line 36
    iput v0, p0, Lcom/adobe/xmp/impl/XMPDateTimeImpl;->day:I

    .line 38
    iput v0, p0, Lcom/adobe/xmp/impl/XMPDateTimeImpl;->hour:I

    .line 40
    iput v0, p0, Lcom/adobe/xmp/impl/XMPDateTimeImpl;->minute:I

    .line 42
    iput v0, p0, Lcom/adobe/xmp/impl/XMPDateTimeImpl;->second:I

    .line 44
    const-string v0, "UTC"

    invoke-static {v0}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v0

    iput-object v0, p0, Lcom/adobe/xmp/impl/XMPDateTimeImpl;->timeZone:Ljava/util/TimeZone;

    .line 58
    return-void
.end method

.method public constructor <init>(Ljava/util/Calendar;)V
    .locals 6

    .prologue
    const/4 v0, 0x0

    .line 67
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    iput v0, p0, Lcom/adobe/xmp/impl/XMPDateTimeImpl;->year:I

    .line 34
    iput v0, p0, Lcom/adobe/xmp/impl/XMPDateTimeImpl;->month:I

    .line 36
    iput v0, p0, Lcom/adobe/xmp/impl/XMPDateTimeImpl;->day:I

    .line 38
    iput v0, p0, Lcom/adobe/xmp/impl/XMPDateTimeImpl;->hour:I

    .line 40
    iput v0, p0, Lcom/adobe/xmp/impl/XMPDateTimeImpl;->minute:I

    .line 42
    iput v0, p0, Lcom/adobe/xmp/impl/XMPDateTimeImpl;->second:I

    .line 44
    const-string v0, "UTC"

    invoke-static {v0}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v0

    iput-object v0, p0, Lcom/adobe/xmp/impl/XMPDateTimeImpl;->timeZone:Ljava/util/TimeZone;

    .line 69
    invoke-virtual {p1}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v1

    .line 70
    invoke-virtual {p1}, Ljava/util/Calendar;->getTimeZone()Ljava/util/TimeZone;

    move-result-object v2

    .line 74
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    .line 75
    invoke-static {v0}, Ljava/util/Calendar;->getInstance(Ljava/util/Locale;)Ljava/util/Calendar;

    move-result-object v0

    check-cast v0, Ljava/util/GregorianCalendar;

    .line 76
    new-instance v3, Ljava/util/Date;

    const-wide/high16 v4, -0x8000000000000000L

    invoke-direct {v3, v4, v5}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v0, v3}, Ljava/util/GregorianCalendar;->setGregorianChange(Ljava/util/Date;)V

    .line 77
    invoke-virtual {v0, v2}, Ljava/util/GregorianCalendar;->setTimeZone(Ljava/util/TimeZone;)V

    .line 78
    invoke-virtual {v0, v1}, Ljava/util/GregorianCalendar;->setTime(Ljava/util/Date;)V

    .line 80
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/GregorianCalendar;->get(I)I

    move-result v1

    iput v1, p0, Lcom/adobe/xmp/impl/XMPDateTimeImpl;->year:I

    .line 81
    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Ljava/util/GregorianCalendar;->get(I)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/adobe/xmp/impl/XMPDateTimeImpl;->month:I

    .line 82
    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Ljava/util/GregorianCalendar;->get(I)I

    move-result v1

    iput v1, p0, Lcom/adobe/xmp/impl/XMPDateTimeImpl;->day:I

    .line 83
    const/16 v1, 0xb

    invoke-virtual {v0, v1}, Ljava/util/GregorianCalendar;->get(I)I

    move-result v1

    iput v1, p0, Lcom/adobe/xmp/impl/XMPDateTimeImpl;->hour:I

    .line 84
    const/16 v1, 0xc

    invoke-virtual {v0, v1}, Ljava/util/GregorianCalendar;->get(I)I

    move-result v1

    iput v1, p0, Lcom/adobe/xmp/impl/XMPDateTimeImpl;->minute:I

    .line 85
    const/16 v1, 0xd

    invoke-virtual {v0, v1}, Ljava/util/GregorianCalendar;->get(I)I

    move-result v1

    iput v1, p0, Lcom/adobe/xmp/impl/XMPDateTimeImpl;->second:I

    .line 86
    const/16 v1, 0xe

    invoke-virtual {v0, v1}, Ljava/util/GregorianCalendar;->get(I)I

    move-result v1

    const v2, 0xf4240

    mul-int/2addr v1, v2

    iput v1, p0, Lcom/adobe/xmp/impl/XMPDateTimeImpl;->nanoSeconds:I

    .line 87
    invoke-virtual {v0}, Ljava/util/GregorianCalendar;->getTimeZone()Ljava/util/TimeZone;

    move-result-object v0

    iput-object v0, p0, Lcom/adobe/xmp/impl/XMPDateTimeImpl;->timeZone:Ljava/util/TimeZone;

    .line 88
    return-void
.end method

.method public constructor <init>(Ljava/util/Date;Ljava/util/TimeZone;)V
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 99
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    iput v0, p0, Lcom/adobe/xmp/impl/XMPDateTimeImpl;->year:I

    .line 34
    iput v0, p0, Lcom/adobe/xmp/impl/XMPDateTimeImpl;->month:I

    .line 36
    iput v0, p0, Lcom/adobe/xmp/impl/XMPDateTimeImpl;->day:I

    .line 38
    iput v0, p0, Lcom/adobe/xmp/impl/XMPDateTimeImpl;->hour:I

    .line 40
    iput v0, p0, Lcom/adobe/xmp/impl/XMPDateTimeImpl;->minute:I

    .line 42
    iput v0, p0, Lcom/adobe/xmp/impl/XMPDateTimeImpl;->second:I

    .line 44
    const-string v0, "UTC"

    invoke-static {v0}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v0

    iput-object v0, p0, Lcom/adobe/xmp/impl/XMPDateTimeImpl;->timeZone:Ljava/util/TimeZone;

    .line 100
    new-instance v0, Ljava/util/GregorianCalendar;

    invoke-direct {v0, p2}, Ljava/util/GregorianCalendar;-><init>(Ljava/util/TimeZone;)V

    .line 101
    invoke-virtual {v0, p1}, Ljava/util/GregorianCalendar;->setTime(Ljava/util/Date;)V

    .line 102
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/GregorianCalendar;->get(I)I

    move-result v1

    iput v1, p0, Lcom/adobe/xmp/impl/XMPDateTimeImpl;->year:I

    .line 103
    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Ljava/util/GregorianCalendar;->get(I)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/adobe/xmp/impl/XMPDateTimeImpl;->month:I

    .line 104
    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Ljava/util/GregorianCalendar;->get(I)I

    move-result v1

    iput v1, p0, Lcom/adobe/xmp/impl/XMPDateTimeImpl;->day:I

    .line 105
    const/16 v1, 0xb

    invoke-virtual {v0, v1}, Ljava/util/GregorianCalendar;->get(I)I

    move-result v1

    iput v1, p0, Lcom/adobe/xmp/impl/XMPDateTimeImpl;->hour:I

    .line 106
    const/16 v1, 0xc

    invoke-virtual {v0, v1}, Ljava/util/GregorianCalendar;->get(I)I

    move-result v1

    iput v1, p0, Lcom/adobe/xmp/impl/XMPDateTimeImpl;->minute:I

    .line 107
    const/16 v1, 0xd

    invoke-virtual {v0, v1}, Ljava/util/GregorianCalendar;->get(I)I

    move-result v1

    iput v1, p0, Lcom/adobe/xmp/impl/XMPDateTimeImpl;->second:I

    .line 108
    const/16 v1, 0xe

    invoke-virtual {v0, v1}, Ljava/util/GregorianCalendar;->get(I)I

    move-result v0

    const v1, 0xf4240

    mul-int/2addr v0, v1

    iput v0, p0, Lcom/adobe/xmp/impl/XMPDateTimeImpl;->nanoSeconds:I

    .line 109
    iput-object p2, p0, Lcom/adobe/xmp/impl/XMPDateTimeImpl;->timeZone:Ljava/util/TimeZone;

    .line 110
    return-void
.end method


# virtual methods
.method public final compareTo(Ljava/lang/Object;)I
    .locals 6

    .prologue
    const-wide/16 v4, 0x2

    .line 278
    invoke-virtual {p0}, Lcom/adobe/xmp/impl/XMPDateTimeImpl;->getCalendar()Ljava/util/Calendar;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v2

    move-object v0, p1

    check-cast v0, Lcom/adobe/xmp/XMPDateTime;

    .line 279
    invoke-interface {v0}, Lcom/adobe/xmp/XMPDateTime;->getCalendar()Ljava/util/Calendar;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v0

    sub-long v0, v2, v0

    .line 280
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-eqz v2, :cond_0

    .line 282
    rem-long/2addr v0, v4

    long-to-int v0, v0

    .line 288
    :goto_0
    return v0

    .line 287
    :cond_0
    iget v0, p0, Lcom/adobe/xmp/impl/XMPDateTimeImpl;->nanoSeconds:I

    check-cast p1, Lcom/adobe/xmp/XMPDateTime;

    invoke-interface {p1}, Lcom/adobe/xmp/XMPDateTime;->getNanoSecond()I

    move-result v1

    sub-int/2addr v0, v1

    int-to-long v0, v0

    .line 288
    rem-long/2addr v0, v4

    long-to-int v0, v0

    goto :goto_0
.end method

.method public final getCalendar()Ljava/util/Calendar;
    .locals 4

    .prologue
    .line 316
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-static {v0}, Ljava/util/Calendar;->getInstance(Ljava/util/Locale;)Ljava/util/Calendar;

    move-result-object v0

    check-cast v0, Ljava/util/GregorianCalendar;

    .line 317
    new-instance v1, Ljava/util/Date;

    const-wide/high16 v2, -0x8000000000000000L

    invoke-direct {v1, v2, v3}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v0, v1}, Ljava/util/GregorianCalendar;->setGregorianChange(Ljava/util/Date;)V

    .line 318
    iget-object v1, p0, Lcom/adobe/xmp/impl/XMPDateTimeImpl;->timeZone:Ljava/util/TimeZone;

    invoke-virtual {v0, v1}, Ljava/util/GregorianCalendar;->setTimeZone(Ljava/util/TimeZone;)V

    .line 319
    const/4 v1, 0x1

    iget v2, p0, Lcom/adobe/xmp/impl/XMPDateTimeImpl;->year:I

    invoke-virtual {v0, v1, v2}, Ljava/util/GregorianCalendar;->set(II)V

    .line 320
    const/4 v1, 0x2

    iget v2, p0, Lcom/adobe/xmp/impl/XMPDateTimeImpl;->month:I

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/GregorianCalendar;->set(II)V

    .line 321
    const/4 v1, 0x5

    iget v2, p0, Lcom/adobe/xmp/impl/XMPDateTimeImpl;->day:I

    invoke-virtual {v0, v1, v2}, Ljava/util/GregorianCalendar;->set(II)V

    .line 322
    const/16 v1, 0xb

    iget v2, p0, Lcom/adobe/xmp/impl/XMPDateTimeImpl;->hour:I

    invoke-virtual {v0, v1, v2}, Ljava/util/GregorianCalendar;->set(II)V

    .line 323
    const/16 v1, 0xc

    iget v2, p0, Lcom/adobe/xmp/impl/XMPDateTimeImpl;->minute:I

    invoke-virtual {v0, v1, v2}, Ljava/util/GregorianCalendar;->set(II)V

    .line 324
    const/16 v1, 0xd

    iget v2, p0, Lcom/adobe/xmp/impl/XMPDateTimeImpl;->second:I

    invoke-virtual {v0, v1, v2}, Ljava/util/GregorianCalendar;->set(II)V

    .line 325
    const/16 v1, 0xe

    iget v2, p0, Lcom/adobe/xmp/impl/XMPDateTimeImpl;->nanoSeconds:I

    const v3, 0xf4240

    div-int/2addr v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/util/GregorianCalendar;->set(II)V

    .line 326
    return-object v0
.end method

.method public final getDay()I
    .locals 1

    .prologue
    .line 177
    iget v0, p0, Lcom/adobe/xmp/impl/XMPDateTimeImpl;->day:I

    return v0
.end method

.method public final getHour()I
    .locals 1

    .prologue
    .line 206
    iget v0, p0, Lcom/adobe/xmp/impl/XMPDateTimeImpl;->hour:I

    return v0
.end method

.method public final getMinute()I
    .locals 1

    .prologue
    .line 224
    iget v0, p0, Lcom/adobe/xmp/impl/XMPDateTimeImpl;->minute:I

    return v0
.end method

.method public final getMonth()I
    .locals 1

    .prologue
    .line 148
    iget v0, p0, Lcom/adobe/xmp/impl/XMPDateTimeImpl;->month:I

    return v0
.end method

.method public final getNanoSecond()I
    .locals 1

    .prologue
    .line 260
    iget v0, p0, Lcom/adobe/xmp/impl/XMPDateTimeImpl;->nanoSeconds:I

    return v0
.end method

.method public final getSecond()I
    .locals 1

    .prologue
    .line 242
    iget v0, p0, Lcom/adobe/xmp/impl/XMPDateTimeImpl;->second:I

    return v0
.end method

.method public final getTimeZone()Ljava/util/TimeZone;
    .locals 1

    .prologue
    .line 298
    iget-object v0, p0, Lcom/adobe/xmp/impl/XMPDateTimeImpl;->timeZone:Ljava/util/TimeZone;

    return-object v0
.end method

.method public final getYear()I
    .locals 1

    .prologue
    .line 130
    iget v0, p0, Lcom/adobe/xmp/impl/XMPDateTimeImpl;->year:I

    return v0
.end method

.method public final setDay(I)V
    .locals 1

    .prologue
    const/16 v0, 0x1f

    .line 186
    if-gtz p1, :cond_0

    .line 188
    const/4 v0, 0x1

    iput v0, p0, Lcom/adobe/xmp/impl/XMPDateTimeImpl;->day:I

    .line 198
    :goto_0
    return-void

    .line 190
    :cond_0
    if-le p1, v0, :cond_1

    .line 192
    iput v0, p0, Lcom/adobe/xmp/impl/XMPDateTimeImpl;->day:I

    goto :goto_0

    .line 196
    :cond_1
    iput p1, p0, Lcom/adobe/xmp/impl/XMPDateTimeImpl;->day:I

    goto :goto_0
.end method

.method public final setHour(I)V
    .locals 2

    .prologue
    .line 215
    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result v0

    const/16 v1, 0x17

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    iput v0, p0, Lcom/adobe/xmp/impl/XMPDateTimeImpl;->hour:I

    .line 216
    return-void
.end method

.method public final setMinute(I)V
    .locals 2

    .prologue
    .line 233
    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result v0

    const/16 v1, 0x3b

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    iput v0, p0, Lcom/adobe/xmp/impl/XMPDateTimeImpl;->minute:I

    .line 234
    return-void
.end method

.method public final setMonth(I)V
    .locals 1

    .prologue
    const/16 v0, 0xc

    .line 157
    if-gtz p1, :cond_0

    .line 159
    const/4 v0, 0x1

    iput v0, p0, Lcom/adobe/xmp/impl/XMPDateTimeImpl;->month:I

    .line 169
    :goto_0
    return-void

    .line 161
    :cond_0
    if-le p1, v0, :cond_1

    .line 163
    iput v0, p0, Lcom/adobe/xmp/impl/XMPDateTimeImpl;->month:I

    goto :goto_0

    .line 167
    :cond_1
    iput p1, p0, Lcom/adobe/xmp/impl/XMPDateTimeImpl;->month:I

    goto :goto_0
.end method

.method public final setNanoSecond(I)V
    .locals 0

    .prologue
    .line 269
    iput p1, p0, Lcom/adobe/xmp/impl/XMPDateTimeImpl;->nanoSeconds:I

    .line 270
    return-void
.end method

.method public final setSecond(I)V
    .locals 2

    .prologue
    .line 251
    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result v0

    const/16 v1, 0x3b

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    iput v0, p0, Lcom/adobe/xmp/impl/XMPDateTimeImpl;->second:I

    .line 252
    return-void
.end method

.method public final setTimeZone(Ljava/util/TimeZone;)V
    .locals 0

    .prologue
    .line 307
    iput-object p1, p0, Lcom/adobe/xmp/impl/XMPDateTimeImpl;->timeZone:Ljava/util/TimeZone;

    .line 308
    return-void
.end method

.method public final setYear(I)V
    .locals 2

    .prologue
    .line 139
    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result v0

    const/16 v1, 0x270f

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    iput v0, p0, Lcom/adobe/xmp/impl/XMPDateTimeImpl;->year:I

    .line 140
    return-void
.end method

.method public final toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 344
    .line 1335
    invoke-static {p0}, Lcom/adobe/xmp/impl/ISO8601Converter;->render(Lcom/adobe/xmp/XMPDateTime;)Ljava/lang/String;

    move-result-object v0

    .line 344
    return-object v0
.end method
