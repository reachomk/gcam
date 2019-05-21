.class final Lcom/android/camera/ui/PrimaryShutterButton$LongPressGestureListener$1;
.super Ljava/lang/Object;
.source "PrimaryShutterButton.java"

# interfaces
.implements Lcom/google/common/util/concurrent/FutureCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/ui/PrimaryShutterButton$LongPressGestureListener;->onLongPress(Landroid/view/MotionEvent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/common/util/concurrent/FutureCallback",
        "<",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field private synthetic this$1:Lcom/android/camera/ui/PrimaryShutterButton$LongPressGestureListener;


# direct methods
.method constructor <init>(Lcom/android/camera/ui/PrimaryShutterButton$LongPressGestureListener;)V
    .locals 0

    .prologue
    .line 181
    iput-object p1, p0, Lcom/android/camera/ui/PrimaryShutterButton$LongPressGestureListener$1;->this$1:Lcom/android/camera/ui/PrimaryShutterButton$LongPressGestureListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onFailure(Ljava/lang/Throwable;)V
    .locals 3

    .prologue
    .line 197
    iget-object v0, p0, Lcom/android/camera/ui/PrimaryShutterButton$LongPressGestureListener$1;->this$1:Lcom/android/camera/ui/PrimaryShutterButton$LongPressGestureListener;

    iget-object v0, v0, Lcom/android/camera/ui/PrimaryShutterButton$LongPressGestureListener;->this$0:Lcom/android/camera/ui/PrimaryShutterButton;

    invoke-static {v0}, Lcom/android/camera/ui/PrimaryShutterButton;->access$300(Lcom/android/camera/ui/PrimaryShutterButton;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 198
    :try_start_0
    iget-object v0, p0, Lcom/android/camera/ui/PrimaryShutterButton$LongPressGestureListener$1;->this$1:Lcom/android/camera/ui/PrimaryShutterButton$LongPressGestureListener;

    iget-object v0, v0, Lcom/android/camera/ui/PrimaryShutterButton$LongPressGestureListener;->this$0:Lcom/android/camera/ui/PrimaryShutterButton;

    const/4 v2, 0x0

    invoke-static {v0, v2}, Lcom/android/camera/ui/PrimaryShutterButton;->access$402(Lcom/android/camera/ui/PrimaryShutterButton;Z)Z

    .line 199
    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public final synthetic onSuccess(Ljava/lang/Object;)V
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 181
    check-cast p1, Ljava/lang/Boolean;

    .line 1184
    iget-object v1, p0, Lcom/android/camera/ui/PrimaryShutterButton$LongPressGestureListener$1;->this$1:Lcom/android/camera/ui/PrimaryShutterButton$LongPressGestureListener;

    iget-object v1, v1, Lcom/android/camera/ui/PrimaryShutterButton$LongPressGestureListener;->this$0:Lcom/android/camera/ui/PrimaryShutterButton;

    invoke-static {v1}, Lcom/android/camera/ui/PrimaryShutterButton;->access$300(Lcom/android/camera/ui/PrimaryShutterButton;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 1185
    :try_start_0
    iget-object v2, p0, Lcom/android/camera/ui/PrimaryShutterButton$LongPressGestureListener$1;->this$1:Lcom/android/camera/ui/PrimaryShutterButton$LongPressGestureListener;

    iget-object v2, v2, Lcom/android/camera/ui/PrimaryShutterButton$LongPressGestureListener;->this$0:Lcom/android/camera/ui/PrimaryShutterButton;

    const/4 v3, 0x0

    invoke-static {v2, v3}, Lcom/android/camera/ui/PrimaryShutterButton;->access$202(Lcom/android/camera/ui/PrimaryShutterButton;Lcom/google/common/util/concurrent/ListenableFuture;)Lcom/google/common/util/concurrent/ListenableFuture;

    .line 1186
    iget-object v2, p0, Lcom/android/camera/ui/PrimaryShutterButton$LongPressGestureListener$1;->this$1:Lcom/android/camera/ui/PrimaryShutterButton$LongPressGestureListener;

    iget-object v2, v2, Lcom/android/camera/ui/PrimaryShutterButton$LongPressGestureListener;->this$0:Lcom/android/camera/ui/PrimaryShutterButton;

    iget-boolean v2, v2, Lcom/android/camera/ui/PrimaryShutterButton;->burstRippleEnabled:Z

    if-eqz v2, :cond_1

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1189
    iget-object v2, p0, Lcom/android/camera/ui/PrimaryShutterButton$LongPressGestureListener$1;->this$1:Lcom/android/camera/ui/PrimaryShutterButton$LongPressGestureListener;

    iget-object v2, v2, Lcom/android/camera/ui/PrimaryShutterButton$LongPressGestureListener;->this$0:Lcom/android/camera/ui/PrimaryShutterButton;

    iget-object v3, p0, Lcom/android/camera/ui/PrimaryShutterButton$LongPressGestureListener$1;->this$1:Lcom/android/camera/ui/PrimaryShutterButton$LongPressGestureListener;

    iget-object v3, v3, Lcom/android/camera/ui/PrimaryShutterButton$LongPressGestureListener;->this$0:Lcom/android/camera/ui/PrimaryShutterButton;

    invoke-static {v3}, Lcom/android/camera/ui/PrimaryShutterButton;->access$400(Lcom/android/camera/ui/PrimaryShutterButton;)Z

    move-result v3

    if-nez v3, :cond_0

    const/4 v0, 0x1

    :cond_0
    invoke-static {v2, v0}, Lcom/android/camera/ui/PrimaryShutterButton;->access$500(Lcom/android/camera/ui/PrimaryShutterButton;Z)V

    .line 1191
    :cond_1
    iget-object v0, p0, Lcom/android/camera/ui/PrimaryShutterButton$LongPressGestureListener$1;->this$1:Lcom/android/camera/ui/PrimaryShutterButton$LongPressGestureListener;

    iget-object v0, v0, Lcom/android/camera/ui/PrimaryShutterButton$LongPressGestureListener;->this$0:Lcom/android/camera/ui/PrimaryShutterButton;

    const/4 v2, 0x0

    invoke-static {v0, v2}, Lcom/android/camera/ui/PrimaryShutterButton;->access$402(Lcom/android/camera/ui/PrimaryShutterButton;Z)Z

    .line 1192
    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
