.class final Lcom/android/camera/burst/BurstCaptureCommand$2;
.super Ljava/lang/Object;
.source "BurstCaptureCommand.java"

# interfaces
.implements Lcom/android/camera/one/v2/core/CaptureStream;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/burst/BurstCaptureCommand;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private synthetic this$0:Lcom/android/camera/burst/BurstCaptureCommand;


# direct methods
.method constructor <init>(Lcom/android/camera/burst/BurstCaptureCommand;)V
    .locals 0

    .prologue
    .line 332
    iput-object p1, p0, Lcom/android/camera/burst/BurstCaptureCommand$2;->this$0:Lcom/android/camera/burst/BurstCaptureCommand;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final getTarget()Lcom/android/camera/one/v2/core/FrameTarget;
    .locals 2

    .prologue
    .line 335
    iget-object v0, p0, Lcom/android/camera/burst/BurstCaptureCommand$2;->this$0:Lcom/android/camera/burst/BurstCaptureCommand;

    invoke-static {v0}, Lcom/android/camera/burst/BurstCaptureCommand;->access$100(Lcom/android/camera/burst/BurstCaptureCommand;)Landroid/view/Surface;

    move-result-object v0

    invoke-static {}, Lcom/android/camera/one/v2/core/FrameServerModule;->noop()Lcom/android/camera/one/v2/core/ResponseListener;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/one/v2/core/FreeFrameTarget;->create(Landroid/view/Surface;Lcom/android/camera/one/v2/core/ResponseListener;)Lcom/android/camera/one/v2/core/FrameTarget;

    move-result-object v0

    return-object v0
.end method
