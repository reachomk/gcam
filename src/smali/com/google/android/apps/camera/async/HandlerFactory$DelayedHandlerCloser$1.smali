.class final Lcom/google/android/apps/camera/async/HandlerFactory$DelayedHandlerCloser$1;
.super Ljava/lang/Object;
.source "HandlerFactory.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/apps/camera/async/HandlerFactory$DelayedHandlerCloser;->close()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private synthetic this$0:Lcom/google/android/apps/camera/async/HandlerFactory$DelayedHandlerCloser;


# direct methods
.method constructor <init>(Lcom/google/android/apps/camera/async/HandlerFactory$DelayedHandlerCloser;)V
    .locals 0

    .prologue
    .line 48
    iput-object p1, p0, Lcom/google/android/apps/camera/async/HandlerFactory$DelayedHandlerCloser$1;->this$0:Lcom/google/android/apps/camera/async/HandlerFactory$DelayedHandlerCloser;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    .prologue
    .line 51
    iget-object v0, p0, Lcom/google/android/apps/camera/async/HandlerFactory$DelayedHandlerCloser$1;->this$0:Lcom/google/android/apps/camera/async/HandlerFactory$DelayedHandlerCloser;

    invoke-static {v0}, Lcom/google/android/apps/camera/async/HandlerFactory$DelayedHandlerCloser;->access$000(Lcom/google/android/apps/camera/async/HandlerFactory$DelayedHandlerCloser;)Landroid/os/HandlerThread;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/HandlerThread;->quitSafely()Z

    .line 52
    return-void
.end method
