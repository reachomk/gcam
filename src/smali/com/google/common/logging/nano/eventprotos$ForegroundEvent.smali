.class public final Lcom/google/common/logging/nano/eventprotos$ForegroundEvent;
.super Lcom/google/protobuf/nano/ExtendableMessageNano;
.source "eventprotos.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/nano/ExtendableMessageNano",
        "<",
        "Lcom/google/common/logging/nano/eventprotos$ForegroundEvent;",
        ">;"
    }
.end annotation


# instance fields
.field public controlNanoTime:J

.field private defaultGallery:Ljava/lang/String;

.field public firstRun:Z

.field public isKeyguardLocked:Z

.field public isKeyguardSecure:Z

.field private isPhotosAuthenticated:Z

.field private isPhotosInstalled:Z

.field public launchMethod:I

.field public mode:I

.field public osBuildDisplay:Ljava/lang/String;

.field public source:I

.field public startupOnCreate:Z


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 6322
    invoke-direct {p0}, Lcom/google/protobuf/nano/ExtendableMessageNano;-><init>()V

    .line 7327
    iput v2, p0, Lcom/google/common/logging/nano/eventprotos$ForegroundEvent;->source:I

    .line 7328
    iput-boolean v2, p0, Lcom/google/common/logging/nano/eventprotos$ForegroundEvent;->firstRun:Z

    .line 7329
    iput-boolean v2, p0, Lcom/google/common/logging/nano/eventprotos$ForegroundEvent;->isPhotosInstalled:Z

    .line 7330
    iput-boolean v2, p0, Lcom/google/common/logging/nano/eventprotos$ForegroundEvent;->isPhotosAuthenticated:Z

    .line 7331
    const-string v0, ""

    iput-object v0, p0, Lcom/google/common/logging/nano/eventprotos$ForegroundEvent;->defaultGallery:Ljava/lang/String;

    .line 7332
    iput v2, p0, Lcom/google/common/logging/nano/eventprotos$ForegroundEvent;->mode:I

    .line 7333
    const-string v0, ""

    iput-object v0, p0, Lcom/google/common/logging/nano/eventprotos$ForegroundEvent;->osBuildDisplay:Ljava/lang/String;

    .line 7334
    iput-boolean v2, p0, Lcom/google/common/logging/nano/eventprotos$ForegroundEvent;->isKeyguardLocked:Z

    .line 7335
    iput-boolean v2, p0, Lcom/google/common/logging/nano/eventprotos$ForegroundEvent;->isKeyguardSecure:Z

    .line 7336
    iput-boolean v2, p0, Lcom/google/common/logging/nano/eventprotos$ForegroundEvent;->startupOnCreate:Z

    .line 7337
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/common/logging/nano/eventprotos$ForegroundEvent;->controlNanoTime:J

    .line 7338
    iput v2, p0, Lcom/google/common/logging/nano/eventprotos$ForegroundEvent;->launchMethod:I

    .line 7339
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/common/logging/nano/eventprotos$ForegroundEvent;->unknownFieldData:Lcom/google/protobuf/nano/FieldArray;

    .line 7340
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/common/logging/nano/eventprotos$ForegroundEvent;->cachedSize:I

    .line 6324
    return-void
.end method


# virtual methods
.method protected final computeSerializedSize()I
    .locals 6

    .prologue
    .line 6388
    invoke-super {p0}, Lcom/google/protobuf/nano/ExtendableMessageNano;->computeSerializedSize()I

    move-result v0

    .line 6389
    iget v1, p0, Lcom/google/common/logging/nano/eventprotos$ForegroundEvent;->source:I

    if-eqz v1, :cond_0

    .line 6390
    const/4 v1, 0x1

    iget v2, p0, Lcom/google/common/logging/nano/eventprotos$ForegroundEvent;->source:I

    .line 6391
    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 6393
    :cond_0
    iget-boolean v1, p0, Lcom/google/common/logging/nano/eventprotos$ForegroundEvent;->firstRun:Z

    if-eqz v1, :cond_1

    .line 6394
    const/4 v1, 0x2

    iget-boolean v2, p0, Lcom/google/common/logging/nano/eventprotos$ForegroundEvent;->firstRun:Z

    .line 7620
    invoke-static {v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeTagSize(I)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    .line 6395
    add-int/2addr v0, v1

    .line 6405
    :cond_1
    iget-object v1, p0, Lcom/google/common/logging/nano/eventprotos$ForegroundEvent;->defaultGallery:Ljava/lang/String;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/google/common/logging/nano/eventprotos$ForegroundEvent;->defaultGallery:Ljava/lang/String;

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 6406
    const/4 v1, 0x5

    iget-object v2, p0, Lcom/google/common/logging/nano/eventprotos$ForegroundEvent;->defaultGallery:Ljava/lang/String;

    .line 6407
    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 6409
    :cond_2
    iget v1, p0, Lcom/google/common/logging/nano/eventprotos$ForegroundEvent;->mode:I

    if-eqz v1, :cond_3

    .line 6410
    const/4 v1, 0x6

    iget v2, p0, Lcom/google/common/logging/nano/eventprotos$ForegroundEvent;->mode:I

    .line 6411
    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 6413
    :cond_3
    iget-object v1, p0, Lcom/google/common/logging/nano/eventprotos$ForegroundEvent;->osBuildDisplay:Ljava/lang/String;

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/google/common/logging/nano/eventprotos$ForegroundEvent;->osBuildDisplay:Ljava/lang/String;

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    .line 6414
    const/4 v1, 0x7

    iget-object v2, p0, Lcom/google/common/logging/nano/eventprotos$ForegroundEvent;->osBuildDisplay:Ljava/lang/String;

    .line 6415
    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 6417
    :cond_4
    iget-boolean v1, p0, Lcom/google/common/logging/nano/eventprotos$ForegroundEvent;->isKeyguardLocked:Z

    if-eqz v1, :cond_5

    .line 6418
    const/16 v1, 0x8

    iget-boolean v2, p0, Lcom/google/common/logging/nano/eventprotos$ForegroundEvent;->isKeyguardLocked:Z

    .line 8620
    invoke-static {v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeTagSize(I)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    .line 6419
    add-int/2addr v0, v1

    .line 6421
    :cond_5
    iget-boolean v1, p0, Lcom/google/common/logging/nano/eventprotos$ForegroundEvent;->isKeyguardSecure:Z

    if-eqz v1, :cond_6

    .line 6422
    const/16 v1, 0x9

    iget-boolean v2, p0, Lcom/google/common/logging/nano/eventprotos$ForegroundEvent;->isKeyguardSecure:Z

    .line 9620
    invoke-static {v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeTagSize(I)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    .line 6423
    add-int/2addr v0, v1

    .line 6425
    :cond_6
    iget-boolean v1, p0, Lcom/google/common/logging/nano/eventprotos$ForegroundEvent;->startupOnCreate:Z

    if-eqz v1, :cond_7

    .line 6426
    const/16 v1, 0xa

    iget-boolean v2, p0, Lcom/google/common/logging/nano/eventprotos$ForegroundEvent;->startupOnCreate:Z

    .line 10620
    invoke-static {v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeTagSize(I)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    .line 6427
    add-int/2addr v0, v1

    .line 6429
    :cond_7
    iget-wide v2, p0, Lcom/google/common/logging/nano/eventprotos$ForegroundEvent;->controlNanoTime:J

    const-wide/16 v4, 0x0

    cmp-long v1, v2, v4

    if-eqz v1, :cond_8

    .line 6430
    const/16 v1, 0xb

    iget-wide v2, p0, Lcom/google/common/logging/nano/eventprotos$ForegroundEvent;->controlNanoTime:J

    .line 6431
    invoke-static {v1, v2, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt64Size(IJ)I

    move-result v1

    add-int/2addr v0, v1

    .line 6433
    :cond_8
    iget v1, p0, Lcom/google/common/logging/nano/eventprotos$ForegroundEvent;->launchMethod:I

    if-eqz v1, :cond_9

    .line 6434
    const/16 v1, 0xc

    iget v2, p0, Lcom/google/common/logging/nano/eventprotos$ForegroundEvent;->launchMethod:I

    .line 6435
    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 6437
    :cond_9
    return v0
.end method

.method public final writeTo(Lcom/google/protobuf/nano/CodedOutputByteBufferNano;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 6347
    iget v0, p0, Lcom/google/common/logging/nano/eventprotos$ForegroundEvent;->source:I

    if-eqz v0, :cond_0

    .line 6348
    const/4 v0, 0x1

    iget v1, p0, Lcom/google/common/logging/nano/eventprotos$ForegroundEvent;->source:I

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 6350
    :cond_0
    iget-boolean v0, p0, Lcom/google/common/logging/nano/eventprotos$ForegroundEvent;->firstRun:Z

    if-eqz v0, :cond_1

    .line 6351
    const/4 v0, 0x2

    iget-boolean v1, p0, Lcom/google/common/logging/nano/eventprotos$ForegroundEvent;->firstRun:Z

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeBool(IZ)V

    .line 6359
    :cond_1
    iget-object v0, p0, Lcom/google/common/logging/nano/eventprotos$ForegroundEvent;->defaultGallery:Ljava/lang/String;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/google/common/logging/nano/eventprotos$ForegroundEvent;->defaultGallery:Ljava/lang/String;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 6360
    const/4 v0, 0x5

    iget-object v1, p0, Lcom/google/common/logging/nano/eventprotos$ForegroundEvent;->defaultGallery:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 6362
    :cond_2
    iget v0, p0, Lcom/google/common/logging/nano/eventprotos$ForegroundEvent;->mode:I

    if-eqz v0, :cond_3

    .line 6363
    const/4 v0, 0x6

    iget v1, p0, Lcom/google/common/logging/nano/eventprotos$ForegroundEvent;->mode:I

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 6365
    :cond_3
    iget-object v0, p0, Lcom/google/common/logging/nano/eventprotos$ForegroundEvent;->osBuildDisplay:Ljava/lang/String;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/google/common/logging/nano/eventprotos$ForegroundEvent;->osBuildDisplay:Ljava/lang/String;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 6366
    const/4 v0, 0x7

    iget-object v1, p0, Lcom/google/common/logging/nano/eventprotos$ForegroundEvent;->osBuildDisplay:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 6368
    :cond_4
    iget-boolean v0, p0, Lcom/google/common/logging/nano/eventprotos$ForegroundEvent;->isKeyguardLocked:Z

    if-eqz v0, :cond_5

    .line 6369
    const/16 v0, 0x8

    iget-boolean v1, p0, Lcom/google/common/logging/nano/eventprotos$ForegroundEvent;->isKeyguardLocked:Z

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeBool(IZ)V

    .line 6371
    :cond_5
    iget-boolean v0, p0, Lcom/google/common/logging/nano/eventprotos$ForegroundEvent;->isKeyguardSecure:Z

    if-eqz v0, :cond_6

    .line 6372
    const/16 v0, 0x9

    iget-boolean v1, p0, Lcom/google/common/logging/nano/eventprotos$ForegroundEvent;->isKeyguardSecure:Z

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeBool(IZ)V

    .line 6374
    :cond_6
    iget-boolean v0, p0, Lcom/google/common/logging/nano/eventprotos$ForegroundEvent;->startupOnCreate:Z

    if-eqz v0, :cond_7

    .line 6375
    const/16 v0, 0xa

    iget-boolean v1, p0, Lcom/google/common/logging/nano/eventprotos$ForegroundEvent;->startupOnCreate:Z

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeBool(IZ)V

    .line 6377
    :cond_7
    iget-wide v0, p0, Lcom/google/common/logging/nano/eventprotos$ForegroundEvent;->controlNanoTime:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_8

    .line 6378
    const/16 v0, 0xb

    iget-wide v2, p0, Lcom/google/common/logging/nano/eventprotos$ForegroundEvent;->controlNanoTime:J

    invoke-virtual {p1, v0, v2, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt64(IJ)V

    .line 6380
    :cond_8
    iget v0, p0, Lcom/google/common/logging/nano/eventprotos$ForegroundEvent;->launchMethod:I

    if-eqz v0, :cond_9

    .line 6381
    const/16 v0, 0xc

    iget v1, p0, Lcom/google/common/logging/nano/eventprotos$ForegroundEvent;->launchMethod:I

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 6383
    :cond_9
    invoke-super {p0, p1}, Lcom/google/protobuf/nano/ExtendableMessageNano;->writeTo(Lcom/google/protobuf/nano/CodedOutputByteBufferNano;)V

    .line 6384
    return-void
.end method
