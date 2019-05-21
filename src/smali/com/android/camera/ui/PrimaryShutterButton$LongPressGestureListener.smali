.class final Lcom/android/camera/ui/PrimaryShutterButton$LongPressGestureListener;
.super Landroid/view/GestureDetector$SimpleOnGestureListener;
.source "PrimaryShutterButton.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/ui/PrimaryShutterButton;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "LongPressGestureListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/ui/PrimaryShutterButton;


# direct methods
.method private constructor <init>(Lcom/android/camera/ui/PrimaryShutterButton;)V
    .locals 0

    .prologue
    .line 166
    iput-object p1, p0, Lcom/android/camera/ui/PrimaryShutterButton$LongPressGestureListener;->this$0:Lcom/android/camera/ui/PrimaryShutterButton;

    invoke-direct {p0}, Landroid/view/GestureDetector$SimpleOnGestureListener;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/camera/ui/PrimaryShutterButton;B)V
    .locals 0

    .prologue
    .line 166
    invoke-direct {p0, p1}, Lcom/android/camera/ui/PrimaryShutterButton$LongPressGestureListener;-><init>(Lcom/android/camera/ui/PrimaryShutterButton;)V

    return-void
.end method


# virtual methods
.method public final onLongPress(Landroid/view/MotionEvent;)V
    .locals 3

    .prologue
    .line 171
    iget-object v0, p0, Lcom/android/camera/ui/PrimaryShutterButton$LongPressGestureListener;->this$0:Lcom/android/camera/ui/PrimaryShutterButton;

    invoke-static {v0}, Lcom/android/camera/ui/PrimaryShutterButton;->access$000(Lcom/android/camera/ui/PrimaryShutterButton;)Landroid/graphics/RectF;

    move-result-object v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/RectF;->contains(FF)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/ui/PrimaryShutterButton$LongPressGestureListener;->this$0:Lcom/android/camera/ui/PrimaryShutterButton;

    iget-boolean v0, v0, Lcom/android/camera/ui/PrimaryShutterButton;->clickEnabled:Z

    if-nez v0, :cond_1

    .line 204
    :cond_0
    :goto_0
    return-void

    .line 175
    :cond_1
    iget-object v0, p0, Lcom/android/camera/ui/PrimaryShutterButton$LongPressGestureListener;->this$0:Lcom/android/camera/ui/PrimaryShutterButton;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/android/camera/ui/PrimaryShutterButton;->access$102(Lcom/android/camera/ui/PrimaryShutterButton;Z)Z

    .line 176
    iget-object v0, p0, Lcom/android/camera/ui/PrimaryShutterButton$LongPressGestureListener;->this$0:Lcom/android/camera/ui/PrimaryShutterButton;

    iget-object v0, v0, Lcom/android/camera/ui/PrimaryShutterButton;->listener:Lcom/android/camera/ui/ShutterButtonHolder$ShutterButtonListener;

    if-eqz v0, :cond_0

    .line 177
    iget-object v0, p0, Lcom/android/camera/ui/PrimaryShutterButton$LongPressGestureListener;->this$0:Lcom/android/camera/ui/PrimaryShutterButton;

    iget-object v1, p0, Lcom/android/camera/ui/PrimaryShutterButton$LongPressGestureListener;->this$0:Lcom/android/camera/ui/PrimaryShutterButton;

    iget-object v1, v1, Lcom/android/camera/ui/PrimaryShutterButton;->listener:Lcom/android/camera/ui/ShutterButtonHolder$ShutterButtonListener;

    invoke-interface {v1}, Lcom/android/camera/ui/ShutterButtonHolder$ShutterButtonListener;->onShutterButtonLongPressed()Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/ui/PrimaryShutterButton;->access$202(Lcom/android/camera/ui/PrimaryShutterButton;Lcom/google/common/util/concurrent/ListenableFuture;)Lcom/google/common/util/concurrent/ListenableFuture;

    .line 179
    iget-object v0, p0, Lcom/android/camera/ui/PrimaryShutterButton$LongPressGestureListener;->this$0:Lcom/android/camera/ui/PrimaryShutterButton;

    .line 180
    invoke-static {v0}, Lcom/android/camera/ui/PrimaryShutterButton;->access$200(Lcom/android/camera/ui/PrimaryShutterButton;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v0

    new-instance v1, Lcom/android/camera/ui/PrimaryShutterButton$LongPressGestureListener$1;

    invoke-direct {v1, p0}, Lcom/android/camera/ui/PrimaryShutterButton$LongPressGestureListener$1;-><init>(Lcom/android/camera/ui/PrimaryShutterButton$LongPressGestureListener;)V

    new-instance v2, Lcom/google/android/apps/camera/async/MainThread;

    invoke-direct {v2}, Lcom/google/android/apps/camera/async/MainThread;-><init>()V

    .line 179
    invoke-static {v0, v1, v2}, Lcom/google/common/util/concurrent/Futures;->addCallback(Lcom/google/common/util/concurrent/ListenableFuture;Lcom/google/common/util/concurrent/FutureCallback;Ljava/util/concurrent/Executor;)V

    goto :goto_0
.end method
