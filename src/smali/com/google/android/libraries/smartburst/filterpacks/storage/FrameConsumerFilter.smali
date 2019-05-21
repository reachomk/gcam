.class public Lcom/google/android/libraries/smartburst/filterpacks/storage/FrameConsumerFilter;
.super Lcom/google/android/libraries/smartburst/filterfw/Filter;
.source "FrameConsumerFilter.java"


# static fields
.field static final synthetic $assertionsDisabled:Z = false

.field private static final INPUT_PORT_FRAME:Ljava/lang/String; = "frame"


# instance fields
.field private volatile mFrameConsumer:Lcom/google/android/libraries/smartburst/buffers/FrameConsumer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/libraries/smartburst/buffers/FrameConsumer",
            "<",
            "Lcom/google/android/libraries/smartburst/filterfw/FrameImage2D;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .prologue
    .line 23
    return-void
.end method

.method public constructor <init>(Lcom/google/android/libraries/smartburst/filterfw/MffContext;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 31
    invoke-direct {p0, p1, p2}, Lcom/google/android/libraries/smartburst/filterfw/Filter;-><init>(Lcom/google/android/libraries/smartburst/filterfw/MffContext;Ljava/lang/String;)V

    .line 27
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/libraries/smartburst/filterpacks/storage/FrameConsumerFilter;->mFrameConsumer:Lcom/google/android/libraries/smartburst/buffers/FrameConsumer;

    .line 32
    return-void
.end method


# virtual methods
.method public getSignature()Lcom/google/android/libraries/smartburst/filterfw/Signature;
    .locals 4

    .prologue
    const/4 v3, 0x2

    .line 48
    const/16 v0, 0x12d

    invoke-static {v0, v3}, Lcom/google/android/libraries/smartburst/filterfw/FrameType;->image2D(II)Lcom/google/android/libraries/smartburst/filterfw/FrameType;

    move-result-object v0

    .line 49
    new-instance v1, Lcom/google/android/libraries/smartburst/filterfw/Signature;

    invoke-direct {v1}, Lcom/google/android/libraries/smartburst/filterfw/Signature;-><init>()V

    const-string v2, "frame"

    .line 50
    invoke-virtual {v1, v2, v3, v0}, Lcom/google/android/libraries/smartburst/filterfw/Signature;->addInputPort(Ljava/lang/String;ILcom/google/android/libraries/smartburst/filterfw/FrameType;)Lcom/google/android/libraries/smartburst/filterfw/Signature;

    move-result-object v0

    .line 51
    invoke-virtual {v0}, Lcom/google/android/libraries/smartburst/filterfw/Signature;->disallowOtherPorts()Lcom/google/android/libraries/smartburst/filterfw/Signature;

    move-result-object v0

    .line 49
    return-object v0
.end method

.method protected onClose()V
    .locals 1

    .prologue
    .line 66
    iget-object v0, p0, Lcom/google/android/libraries/smartburst/filterpacks/storage/FrameConsumerFilter;->mFrameConsumer:Lcom/google/android/libraries/smartburst/buffers/FrameConsumer;

    .line 69
    invoke-interface {v0}, Lcom/google/android/libraries/smartburst/buffers/FrameConsumer;->onEndOfStream()V

    .line 70
    return-void
.end method

.method protected onOpen()V
    .locals 2

    .prologue
    .line 36
    iget-object v0, p0, Lcom/google/android/libraries/smartburst/filterpacks/storage/FrameConsumerFilter;->mFrameConsumer:Lcom/google/android/libraries/smartburst/buffers/FrameConsumer;

    if-nez v0, :cond_0

    .line 37
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Frame buffer is not set."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 39
    :cond_0
    return-void
.end method

.method protected onProcess()V
    .locals 2

    .prologue
    .line 56
    iget-object v0, p0, Lcom/google/android/libraries/smartburst/filterpacks/storage/FrameConsumerFilter;->mFrameConsumer:Lcom/google/android/libraries/smartburst/buffers/FrameConsumer;

    .line 59
    const-string v1, "frame"

    invoke-virtual {p0, v1}, Lcom/google/android/libraries/smartburst/filterpacks/storage/FrameConsumerFilter;->getConnectedInputPort(Ljava/lang/String;)Lcom/google/android/libraries/smartburst/filterfw/InputPort;

    move-result-object v1

    .line 60
    invoke-virtual {v1}, Lcom/google/android/libraries/smartburst/filterfw/InputPort;->pullFrame()Lcom/google/android/libraries/smartburst/filterfw/Frame;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/libraries/smartburst/filterfw/Frame;->asFrameImage2D()Lcom/google/android/libraries/smartburst/filterfw/FrameImage2D;

    move-result-object v1

    .line 61
    invoke-interface {v0, v1}, Lcom/google/android/libraries/smartburst/buffers/FrameConsumer;->onFrameAvailable(Ljava/lang/Object;)V

    .line 62
    return-void
.end method

.method public setFrameConsumer(Lcom/google/android/libraries/smartburst/buffers/FrameConsumer;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/libraries/smartburst/buffers/FrameConsumer",
            "<",
            "Lcom/google/android/libraries/smartburst/filterfw/FrameImage2D;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 42
    invoke-static {p1}, Lcom/google/common/base/ExtraObjectsMethodsForWeb;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 43
    iput-object p1, p0, Lcom/google/android/libraries/smartburst/filterpacks/storage/FrameConsumerFilter;->mFrameConsumer:Lcom/google/android/libraries/smartburst/buffers/FrameConsumer;

    .line 44
    return-void
.end method
