.class public abstract Lcom/android/camera/util/ProcessingOutputStream$StateMachine;
.super Ljava/lang/Object;
.source "ProcessingOutputStream.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/util/ProcessingOutputStream;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "StateMachine"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/camera/util/ProcessingOutputStream$StateMachine$InsufficientBytesException;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private final byteQueue:Lcom/android/camera/util/ByteQueue;

.field private bytesToForward:I

.field private bytesToSkip:I

.field private final outputStream:Ljava/io/OutputStream;

.field private requiredBytes:I

.field private state:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 117
    const-string v0, "ProcFSM"

    invoke-static {v0}, Lcom/android/camera/debug/Log;->makeTag(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/camera/util/ProcessingOutputStream$StateMachine;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/io/OutputStream;I)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 151
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 119
    new-instance v0, Lcom/android/camera/util/ByteQueue;

    invoke-direct {v0}, Lcom/android/camera/util/ByteQueue;-><init>()V

    iput-object v0, p0, Lcom/android/camera/util/ProcessingOutputStream$StateMachine;->byteQueue:Lcom/android/camera/util/ByteQueue;

    .line 131
    iput v1, p0, Lcom/android/camera/util/ProcessingOutputStream$StateMachine;->requiredBytes:I

    .line 140
    iput v1, p0, Lcom/android/camera/util/ProcessingOutputStream$StateMachine;->bytesToSkip:I

    .line 149
    iput v1, p0, Lcom/android/camera/util/ProcessingOutputStream$StateMachine;->bytesToForward:I

    .line 152
    iput-object p1, p0, Lcom/android/camera/util/ProcessingOutputStream$StateMachine;->outputStream:Ljava/io/OutputStream;

    .line 153
    iput v1, p0, Lcom/android/camera/util/ProcessingOutputStream$StateMachine;->state:I

    .line 154
    return-void
.end method

.method private final ensureBytesAvailable(II)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/camera/util/ProcessingOutputStream$StateMachine$InsufficientBytesException;
        }
    .end annotation

    .prologue
    .line 616
    iget-object v0, p0, Lcom/android/camera/util/ProcessingOutputStream$StateMachine;->byteQueue:Lcom/android/camera/util/ByteQueue;

    invoke-virtual {v0}, Lcom/android/camera/util/ByteQueue;->size()I

    move-result v0

    if-lt v0, p1, :cond_0

    iget v0, p0, Lcom/android/camera/util/ProcessingOutputStream$StateMachine;->bytesToForward:I

    if-nez v0, :cond_0

    iget v0, p0, Lcom/android/camera/util/ProcessingOutputStream$StateMachine;->bytesToSkip:I

    if-eqz v0, :cond_1

    .line 617
    :cond_0
    new-instance v0, Lcom/android/camera/util/ProcessingOutputStream$StateMachine$InsufficientBytesException;

    invoke-direct {v0, p0, p1, p2}, Lcom/android/camera/util/ProcessingOutputStream$StateMachine$InsufficientBytesException;-><init>(Lcom/android/camera/util/ProcessingOutputStream$StateMachine;II)V

    throw v0

    .line 619
    :cond_1
    return-void
.end method

.method private final ensureNotForwardingOrSkipping()V
    .locals 2

    .prologue
    .line 597
    iget v0, p0, Lcom/android/camera/util/ProcessingOutputStream$StateMachine;->bytesToForward:I

    if-nez v0, :cond_0

    iget v0, p0, Lcom/android/camera/util/ProcessingOutputStream$StateMachine;->bytesToSkip:I

    if-eqz v0, :cond_1

    .line 598
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Can not read or write bytes while forwarding or skipping"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 600
    :cond_1
    return-void
.end method

.method private final run()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 663
    :goto_0
    iget-object v0, p0, Lcom/android/camera/util/ProcessingOutputStream$StateMachine;->byteQueue:Lcom/android/camera/util/ByteQueue;

    invoke-virtual {v0}, Lcom/android/camera/util/ByteQueue;->size()I

    move-result v0

    iget v1, p0, Lcom/android/camera/util/ProcessingOutputStream$StateMachine;->requiredBytes:I

    if-lt v0, v1, :cond_0

    iget v0, p0, Lcom/android/camera/util/ProcessingOutputStream$StateMachine;->bytesToForward:I

    if-nez v0, :cond_0

    iget v0, p0, Lcom/android/camera/util/ProcessingOutputStream$StateMachine;->bytesToSkip:I

    if-nez v0, :cond_0

    .line 665
    const/4 v0, 0x0

    :try_start_0
    iput v0, p0, Lcom/android/camera/util/ProcessingOutputStream$StateMachine;->requiredBytes:I

    .line 666
    iget v0, p0, Lcom/android/camera/util/ProcessingOutputStream$StateMachine;->state:I

    invoke-virtual {p0, v0}, Lcom/android/camera/util/ProcessingOutputStream$StateMachine;->step(I)I

    move-result v0

    iput v0, p0, Lcom/android/camera/util/ProcessingOutputStream$StateMachine;->state:I
    :try_end_0
    .catch Lcom/android/camera/util/ProcessingOutputStream$StateMachine$InsufficientBytesException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 667
    :catch_0
    move-exception v0

    .line 670
    invoke-virtual {v0}, Lcom/android/camera/util/ProcessingOutputStream$StateMachine$InsufficientBytesException;->getRequiredBytes()I

    move-result v1

    iput v1, p0, Lcom/android/camera/util/ProcessingOutputStream$StateMachine;->requiredBytes:I

    .line 671
    invoke-virtual {v0}, Lcom/android/camera/util/ProcessingOutputStream$StateMachine$InsufficientBytesException;->getRetryState()I

    move-result v0

    iput v0, p0, Lcom/android/camera/util/ProcessingOutputStream$StateMachine;->state:I

    .line 675
    :cond_0
    return-void
.end method


# virtual methods
.method public final closeStream()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 255
    iget-object v0, p0, Lcom/android/camera/util/ProcessingOutputStream$StateMachine;->byteQueue:Lcom/android/camera/util/ByteQueue;

    invoke-virtual {v0}, Lcom/android/camera/util/ByteQueue;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 256
    sget-object v0, Lcom/android/camera/util/ProcessingOutputStream$StateMachine;->TAG:Ljava/lang/String;

    iget-object v1, p0, Lcom/android/camera/util/ProcessingOutputStream$StateMachine;->byteQueue:Lcom/android/camera/util/ByteQueue;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, 0x28

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v3, "Warning: unwritten bytes in the buffer: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/debug/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 258
    :cond_0
    iget v0, p0, Lcom/android/camera/util/ProcessingOutputStream$StateMachine;->bytesToForward:I

    if-lez v0, :cond_1

    .line 259
    sget-object v0, Lcom/android/camera/util/ProcessingOutputStream$StateMachine;->TAG:Ljava/lang/String;

    iget v1, p0, Lcom/android/camera/util/ProcessingOutputStream$StateMachine;->bytesToForward:I

    new-instance v2, Ljava/lang/StringBuilder;

    const/16 v3, 0x30

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v3, "Warning: still need to forward "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " bytes"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/debug/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 261
    :cond_1
    iget v0, p0, Lcom/android/camera/util/ProcessingOutputStream$StateMachine;->bytesToSkip:I

    if-lez v0, :cond_2

    .line 262
    sget-object v0, Lcom/android/camera/util/ProcessingOutputStream$StateMachine;->TAG:Ljava/lang/String;

    iget v1, p0, Lcom/android/camera/util/ProcessingOutputStream$StateMachine;->bytesToForward:I

    new-instance v2, Ljava/lang/StringBuilder;

    const/16 v3, 0x2d

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v3, "Warning: still need to skip "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " bytes"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/debug/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 264
    :cond_2
    iget-object v0, p0, Lcom/android/camera/util/ProcessingOutputStream$StateMachine;->outputStream:Ljava/io/OutputStream;

    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V

    .line 265
    return-void
.end method

.method public final flushStream()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 246
    iget-object v0, p0, Lcom/android/camera/util/ProcessingOutputStream$StateMachine;->outputStream:Ljava/io/OutputStream;

    invoke-virtual {v0}, Ljava/io/OutputStream;->flush()V

    .line 247
    return-void
.end method

.method protected final forwardBytes(I)Z
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 404
    invoke-direct {p0}, Lcom/android/camera/util/ProcessingOutputStream$StateMachine;->ensureNotForwardingOrSkipping()V

    .line 405
    iget-object v0, p0, Lcom/android/camera/util/ProcessingOutputStream$StateMachine;->byteQueue:Lcom/android/camera/util/ByteQueue;

    invoke-virtual {v0}, Lcom/android/camera/util/ByteQueue;->size()I

    move-result v0

    if-lt v0, p1, :cond_0

    .line 406
    iget-object v0, p0, Lcom/android/camera/util/ProcessingOutputStream$StateMachine;->byteQueue:Lcom/android/camera/util/ByteQueue;

    iget-object v1, p0, Lcom/android/camera/util/ProcessingOutputStream$StateMachine;->outputStream:Ljava/io/OutputStream;

    invoke-virtual {v0, v1, p1}, Lcom/android/camera/util/ByteQueue;->popInto(Ljava/io/OutputStream;I)V

    .line 407
    const/4 v0, 0x1

    .line 411
    :goto_0
    return v0

    .line 409
    :cond_0
    iget-object v0, p0, Lcom/android/camera/util/ProcessingOutputStream$StateMachine;->byteQueue:Lcom/android/camera/util/ByteQueue;

    invoke-virtual {v0}, Lcom/android/camera/util/ByteQueue;->size()I

    move-result v0

    sub-int v0, p1, v0

    iput v0, p0, Lcom/android/camera/util/ProcessingOutputStream$StateMachine;->bytesToForward:I

    .line 410
    iget-object v0, p0, Lcom/android/camera/util/ProcessingOutputStream$StateMachine;->byteQueue:Lcom/android/camera/util/ByteQueue;

    iget-object v1, p0, Lcom/android/camera/util/ProcessingOutputStream$StateMachine;->outputStream:Ljava/io/OutputStream;

    iget-object v2, p0, Lcom/android/camera/util/ProcessingOutputStream$StateMachine;->byteQueue:Lcom/android/camera/util/ByteQueue;

    invoke-virtual {v2}, Lcom/android/camera/util/ByteQueue;->size()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/util/ByteQueue;->popInto(Ljava/io/OutputStream;I)V

    .line 411
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected final forwardRemainder()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 460
    invoke-direct {p0}, Lcom/android/camera/util/ProcessingOutputStream$StateMachine;->ensureNotForwardingOrSkipping()V

    .line 461
    iget-object v0, p0, Lcom/android/camera/util/ProcessingOutputStream$StateMachine;->byteQueue:Lcom/android/camera/util/ByteQueue;

    iget-object v1, p0, Lcom/android/camera/util/ProcessingOutputStream$StateMachine;->outputStream:Ljava/io/OutputStream;

    iget-object v2, p0, Lcom/android/camera/util/ProcessingOutputStream$StateMachine;->byteQueue:Lcom/android/camera/util/ByteQueue;

    invoke-virtual {v2}, Lcom/android/camera/util/ByteQueue;->size()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/util/ByteQueue;->popInto(Ljava/io/OutputStream;I)V

    .line 462
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/camera/util/ProcessingOutputStream$StateMachine;->bytesToForward:I

    .line 463
    return-void
.end method

.method protected final getOutputStream()Ljava/io/OutputStream;
    .locals 1

    .prologue
    .line 301
    iget-object v0, p0, Lcom/android/camera/util/ProcessingOutputStream$StateMachine;->outputStream:Ljava/io/OutputStream;

    return-object v0
.end method

.method public final push(I)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 165
    iget v0, p0, Lcom/android/camera/util/ProcessingOutputStream$StateMachine;->bytesToSkip:I

    if-eqz v0, :cond_1

    .line 167
    iget v0, p0, Lcom/android/camera/util/ProcessingOutputStream$StateMachine;->bytesToSkip:I

    if-lez v0, :cond_0

    .line 168
    iget v0, p0, Lcom/android/camera/util/ProcessingOutputStream$StateMachine;->bytesToSkip:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/android/camera/util/ProcessingOutputStream$StateMachine;->bytesToSkip:I

    .line 180
    :cond_0
    :goto_0
    return-void

    .line 170
    :cond_1
    iget v0, p0, Lcom/android/camera/util/ProcessingOutputStream$StateMachine;->bytesToForward:I

    if-eqz v0, :cond_2

    .line 172
    iget-object v0, p0, Lcom/android/camera/util/ProcessingOutputStream$StateMachine;->outputStream:Ljava/io/OutputStream;

    invoke-virtual {v0, p1}, Ljava/io/OutputStream;->write(I)V

    .line 173
    iget v0, p0, Lcom/android/camera/util/ProcessingOutputStream$StateMachine;->bytesToForward:I

    if-lez v0, :cond_0

    .line 174
    iget v0, p0, Lcom/android/camera/util/ProcessingOutputStream$StateMachine;->bytesToForward:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/android/camera/util/ProcessingOutputStream$StateMachine;->bytesToForward:I

    goto :goto_0

    .line 177
    :cond_2
    iget-object v0, p0, Lcom/android/camera/util/ProcessingOutputStream$StateMachine;->byteQueue:Lcom/android/camera/util/ByteQueue;

    int-to-byte v1, p1

    invoke-virtual {v0, v1}, Lcom/android/camera/util/ByteQueue;->push(B)V

    .line 178
    invoke-direct {p0}, Lcom/android/camera/util/ProcessingOutputStream$StateMachine;->run()V

    goto :goto_0
.end method

.method public final push([BII)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 205
    iget v0, p0, Lcom/android/camera/util/ProcessingOutputStream$StateMachine;->bytesToSkip:I

    if-ge v0, p3, :cond_0

    iget v0, p0, Lcom/android/camera/util/ProcessingOutputStream$StateMachine;->bytesToSkip:I

    if-gez v0, :cond_2

    .line 208
    :cond_0
    iget v0, p0, Lcom/android/camera/util/ProcessingOutputStream$StateMachine;->bytesToSkip:I

    if-lez v0, :cond_1

    .line 209
    iget v0, p0, Lcom/android/camera/util/ProcessingOutputStream$StateMachine;->bytesToSkip:I

    sub-int/2addr v0, p3

    iput v0, p0, Lcom/android/camera/util/ProcessingOutputStream$StateMachine;->bytesToSkip:I

    .line 238
    :cond_1
    :goto_0
    return-void

    .line 211
    :cond_2
    iget v0, p0, Lcom/android/camera/util/ProcessingOutputStream$StateMachine;->bytesToForward:I

    if-ge v0, p3, :cond_3

    iget v0, p0, Lcom/android/camera/util/ProcessingOutputStream$StateMachine;->bytesToForward:I

    if-gez v0, :cond_4

    .line 214
    :cond_3
    iget-object v0, p0, Lcom/android/camera/util/ProcessingOutputStream$StateMachine;->outputStream:Ljava/io/OutputStream;

    invoke-virtual {v0, p1, p2, p3}, Ljava/io/OutputStream;->write([BII)V

    .line 215
    iget v0, p0, Lcom/android/camera/util/ProcessingOutputStream$StateMachine;->bytesToForward:I

    if-lez v0, :cond_1

    .line 216
    iget v0, p0, Lcom/android/camera/util/ProcessingOutputStream$StateMachine;->bytesToForward:I

    sub-int/2addr v0, p3

    iput v0, p0, Lcom/android/camera/util/ProcessingOutputStream$StateMachine;->bytesToForward:I

    goto :goto_0

    .line 219
    :cond_4
    iget v0, p0, Lcom/android/camera/util/ProcessingOutputStream$StateMachine;->bytesToSkip:I

    if-lez v0, :cond_6

    .line 223
    iget v0, p0, Lcom/android/camera/util/ProcessingOutputStream$StateMachine;->bytesToSkip:I

    add-int/2addr p2, v0

    .line 224
    iget v0, p0, Lcom/android/camera/util/ProcessingOutputStream$StateMachine;->bytesToSkip:I

    sub-int/2addr p3, v0

    .line 225
    iput v2, p0, Lcom/android/camera/util/ProcessingOutputStream$StateMachine;->bytesToSkip:I

    .line 235
    :cond_5
    :goto_1
    iget-object v0, p0, Lcom/android/camera/util/ProcessingOutputStream$StateMachine;->byteQueue:Lcom/android/camera/util/ByteQueue;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/camera/util/ByteQueue;->push([BII)V

    .line 236
    invoke-direct {p0}, Lcom/android/camera/util/ProcessingOutputStream$StateMachine;->run()V

    goto :goto_0

    .line 226
    :cond_6
    iget v0, p0, Lcom/android/camera/util/ProcessingOutputStream$StateMachine;->bytesToForward:I

    if-lez v0, :cond_5

    .line 230
    iget-object v0, p0, Lcom/android/camera/util/ProcessingOutputStream$StateMachine;->outputStream:Ljava/io/OutputStream;

    iget v1, p0, Lcom/android/camera/util/ProcessingOutputStream$StateMachine;->bytesToForward:I

    invoke-virtual {v0, p1, p2, v1}, Ljava/io/OutputStream;->write([BII)V

    .line 231
    iget v0, p0, Lcom/android/camera/util/ProcessingOutputStream$StateMachine;->bytesToForward:I

    add-int/2addr p2, v0

    .line 232
    iget v0, p0, Lcom/android/camera/util/ProcessingOutputStream$StateMachine;->bytesToForward:I

    sub-int/2addr p3, v0

    .line 233
    iput v2, p0, Lcom/android/camera/util/ProcessingOutputStream$StateMachine;->bytesToForward:I

    goto :goto_1
.end method

.method protected final skipBytes(I)Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 433
    invoke-direct {p0}, Lcom/android/camera/util/ProcessingOutputStream$StateMachine;->ensureNotForwardingOrSkipping()V

    .line 434
    iget-object v0, p0, Lcom/android/camera/util/ProcessingOutputStream$StateMachine;->byteQueue:Lcom/android/camera/util/ByteQueue;

    invoke-virtual {v0}, Lcom/android/camera/util/ByteQueue;->size()I

    move-result v0

    if-lt v0, p1, :cond_0

    .line 435
    iget-object v0, p0, Lcom/android/camera/util/ProcessingOutputStream$StateMachine;->byteQueue:Lcom/android/camera/util/ByteQueue;

    invoke-virtual {v0, p1}, Lcom/android/camera/util/ByteQueue;->skip(I)V

    .line 436
    const/4 v0, 0x1

    .line 440
    :goto_0
    return v0

    .line 438
    :cond_0
    iget-object v0, p0, Lcom/android/camera/util/ProcessingOutputStream$StateMachine;->byteQueue:Lcom/android/camera/util/ByteQueue;

    invoke-virtual {v0}, Lcom/android/camera/util/ByteQueue;->size()I

    move-result v0

    sub-int v0, p1, v0

    iput v0, p0, Lcom/android/camera/util/ProcessingOutputStream$StateMachine;->bytesToSkip:I

    .line 439
    iget-object v0, p0, Lcom/android/camera/util/ProcessingOutputStream$StateMachine;->byteQueue:Lcom/android/camera/util/ByteQueue;

    iget-object v1, p0, Lcom/android/camera/util/ProcessingOutputStream$StateMachine;->byteQueue:Lcom/android/camera/util/ByteQueue;

    invoke-virtual {v1}, Lcom/android/camera/util/ByteQueue;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/camera/util/ByteQueue;->skip(I)V

    .line 440
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected abstract step(I)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/android/camera/util/ProcessingOutputStream$StateMachine$InsufficientBytesException;
        }
    .end annotation
.end method

.method protected final tryRead(II)[B
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/camera/util/ProcessingOutputStream$StateMachine$InsufficientBytesException;
        }
    .end annotation

    .prologue
    .line 539
    const/4 v0, 0x3

    invoke-direct {p0, p1, v0}, Lcom/android/camera/util/ProcessingOutputStream$StateMachine;->ensureBytesAvailable(II)V

    .line 1349
    invoke-direct {p0}, Lcom/android/camera/util/ProcessingOutputStream$StateMachine;->ensureNotForwardingOrSkipping()V

    .line 1350
    iget-object v0, p0, Lcom/android/camera/util/ProcessingOutputStream$StateMachine;->byteQueue:Lcom/android/camera/util/ByteQueue;

    invoke-virtual {v0, p1}, Lcom/android/camera/util/ByteQueue;->pop(I)[B

    move-result-object v0

    .line 540
    return-object v0
.end method

.method protected final tryReadBigEndShort(I)S
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/camera/util/ProcessingOutputStream$StateMachine$InsufficientBytesException;
        }
    .end annotation

    .prologue
    .line 586
    invoke-direct {p0}, Lcom/android/camera/util/ProcessingOutputStream$StateMachine;->ensureNotForwardingOrSkipping()V

    .line 587
    const/4 v0, 0x2

    invoke-direct {p0, v0, p1}, Lcom/android/camera/util/ProcessingOutputStream$StateMachine;->ensureBytesAvailable(II)V

    .line 1381
    invoke-direct {p0}, Lcom/android/camera/util/ProcessingOutputStream$StateMachine;->ensureNotForwardingOrSkipping()V

    .line 1382
    iget-object v0, p0, Lcom/android/camera/util/ProcessingOutputStream$StateMachine;->byteQueue:Lcom/android/camera/util/ByteQueue;

    invoke-virtual {v0}, Lcom/android/camera/util/ByteQueue;->popBigEndShort()S

    move-result v0

    .line 588
    return v0
.end method

.method protected final write([B)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 322
    invoke-direct {p0}, Lcom/android/camera/util/ProcessingOutputStream$StateMachine;->ensureNotForwardingOrSkipping()V

    .line 323
    iget-object v0, p0, Lcom/android/camera/util/ProcessingOutputStream$StateMachine;->outputStream:Ljava/io/OutputStream;

    invoke-virtual {v0, p1}, Ljava/io/OutputStream;->write([B)V

    .line 324
    return-void
.end method

.method protected final writeBigEndShort(S)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 333
    invoke-direct {p0}, Lcom/android/camera/util/ProcessingOutputStream$StateMachine;->ensureNotForwardingOrSkipping()V

    .line 334
    iget-object v0, p0, Lcom/android/camera/util/ProcessingOutputStream$StateMachine;->outputStream:Ljava/io/OutputStream;

    shr-int/lit8 v1, p1, 0x8

    and-int/lit16 v1, v1, 0xff

    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write(I)V

    .line 335
    iget-object v0, p0, Lcom/android/camera/util/ProcessingOutputStream$StateMachine;->outputStream:Ljava/io/OutputStream;

    and-int/lit16 v1, p1, 0xff

    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write(I)V

    .line 336
    return-void
.end method
