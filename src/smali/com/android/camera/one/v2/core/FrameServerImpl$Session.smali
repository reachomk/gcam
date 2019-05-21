.class public final Lcom/android/camera/one/v2/core/FrameServerImpl$Session;
.super Ljava/lang/Object;
.source "FrameServerImpl.java"

# interfaces
.implements Lcom/android/camera/one/v2/core/FrameServer$FrameServerSession;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/one/v2/core/FrameServerImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "Session"
.end annotation


# instance fields
.field private final cameraTicket$9HHMUR9FC5N68SJFD5I2UOR1DLIN4O9FDTN6ABRM68NMIRB1CTIMQOBEC5JMARB5DPQ2UT39CDLMAT3GDTNMOBQKD5HMMPBK7C______:Lcom/android/camera/audio/SingleUseSoundPlayer;

.field private closed:Z

.field private synthetic this$0:Lcom/android/camera/one/v2/core/FrameServerImpl;


# direct methods
.method private constructor <init>(Lcom/android/camera/one/v2/core/FrameServerImpl;Lcom/android/camera/audio/SingleUseSoundPlayer;)V
    .locals 1

    .prologue
    .line 25
    iput-object p1, p0, Lcom/android/camera/one/v2/core/FrameServerImpl$Session;->this$0:Lcom/android/camera/one/v2/core/FrameServerImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    iput-object p2, p0, Lcom/android/camera/one/v2/core/FrameServerImpl$Session;->cameraTicket$9HHMUR9FC5N68SJFD5I2UOR1DLIN4O9FDTN6ABRM68NMIRB1CTIMQOBEC5JMARB5DPQ2UT39CDLMAT3GDTNMOBQKD5HMMPBK7C______:Lcom/android/camera/audio/SingleUseSoundPlayer;

    .line 27
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/camera/one/v2/core/FrameServerImpl$Session;->closed:Z

    .line 28
    return-void
.end method

.method synthetic constructor <init>(Lcom/android/camera/one/v2/core/FrameServerImpl;Lcom/android/camera/audio/SingleUseSoundPlayer;B)V
    .locals 0

    .prologue
    .line 21
    invoke-direct {p0, p1, p2}, Lcom/android/camera/one/v2/core/FrameServerImpl$Session;-><init>(Lcom/android/camera/one/v2/core/FrameServerImpl;Lcom/android/camera/audio/SingleUseSoundPlayer;)V

    return-void
.end method


# virtual methods
.method public final close()V
    .locals 1

    .prologue
    .line 40
    iget-boolean v0, p0, Lcom/android/camera/one/v2/core/FrameServerImpl$Session;->closed:Z

    if-nez v0, :cond_0

    .line 41
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/camera/one/v2/core/FrameServerImpl$Session;->closed:Z

    .line 42
    iget-object v0, p0, Lcom/android/camera/one/v2/core/FrameServerImpl$Session;->cameraTicket$9HHMUR9FC5N68SJFD5I2UOR1DLIN4O9FDTN6ABRM68NMIRB1CTIMQOBEC5JMARB5DPQ2UT39CDLMAT3GDTNMOBQKD5HMMPBK7C______:Lcom/android/camera/audio/SingleUseSoundPlayer;

    invoke-interface {v0}, Lcom/android/camera/audio/SingleUseSoundPlayer;->close()V

    .line 44
    :cond_0
    return-void
.end method

.method public final submitRequest(Ljava/util/List;Lcom/android/camera/one/v2/core/FrameServer$RequestType;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/android/camera/one/v2/core/Request;",
            ">;",
            "Lcom/android/camera/one/v2/core/FrameServer$RequestType;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/apps/camera/async/ResourceUnavailableException;
        }
    .end annotation

    .prologue
    .line 33
    iget-boolean v0, p0, Lcom/android/camera/one/v2/core/FrameServerImpl$Session;->closed:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    const-string v1, "submitRequest() cannot be used after the Session is closed"

    invoke-static {v0, v1}, Lcom/google/common/base/ExtraObjectsMethodsForWeb;->checkState(ZLjava/lang/Object;)V

    .line 35
    iget-object v0, p0, Lcom/android/camera/one/v2/core/FrameServerImpl$Session;->this$0:Lcom/android/camera/one/v2/core/FrameServerImpl;

    invoke-static {v0}, Lcom/android/camera/one/v2/core/FrameServerImpl;->access$000(Lcom/android/camera/one/v2/core/FrameServerImpl;)Lcom/android/camera/one/v2/core/FrameRequestProcessor;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/android/camera/one/v2/core/FrameRequestProcessor;->submitRequest(Ljava/util/List;Lcom/android/camera/one/v2/core/FrameServer$RequestType;)V

    .line 36
    return-void

    .line 33
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
