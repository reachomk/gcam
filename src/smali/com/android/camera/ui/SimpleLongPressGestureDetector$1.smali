.class final Lcom/android/camera/ui/SimpleLongPressGestureDetector$1;
.super Ljava/lang/Object;
.source "SimpleLongPressGestureDetector.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/ui/SimpleLongPressGestureDetector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private synthetic this$0:Lcom/android/camera/ui/SimpleLongPressGestureDetector;


# direct methods
.method constructor <init>(Lcom/android/camera/ui/SimpleLongPressGestureDetector;)V
    .locals 0

    .prologue
    .line 23
    iput-object p1, p0, Lcom/android/camera/ui/SimpleLongPressGestureDetector$1;->this$0:Lcom/android/camera/ui/SimpleLongPressGestureDetector;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .prologue
    .line 26
    iget-object v0, p0, Lcom/android/camera/ui/SimpleLongPressGestureDetector$1;->this$0:Lcom/android/camera/ui/SimpleLongPressGestureDetector;

    invoke-static {v0}, Lcom/android/camera/ui/SimpleLongPressGestureDetector;->access$000(Lcom/android/camera/ui/SimpleLongPressGestureDetector;)Landroid/view/MotionEvent;

    move-result-object v0

    if-nez v0, :cond_0

    .line 32
    :goto_0
    return-void

    .line 30
    :cond_0
    iget-object v0, p0, Lcom/android/camera/ui/SimpleLongPressGestureDetector$1;->this$0:Lcom/android/camera/ui/SimpleLongPressGestureDetector;

    invoke-static {v0}, Lcom/android/camera/ui/SimpleLongPressGestureDetector;->access$100(Lcom/android/camera/ui/SimpleLongPressGestureDetector;)Landroid/view/GestureDetector$SimpleOnGestureListener;

    move-result-object v0

    iget-object v1, p0, Lcom/android/camera/ui/SimpleLongPressGestureDetector$1;->this$0:Lcom/android/camera/ui/SimpleLongPressGestureDetector;

    invoke-static {v1}, Lcom/android/camera/ui/SimpleLongPressGestureDetector;->access$000(Lcom/android/camera/ui/SimpleLongPressGestureDetector;)Landroid/view/MotionEvent;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/GestureDetector$SimpleOnGestureListener;->onLongPress(Landroid/view/MotionEvent;)V

    .line 31
    iget-object v0, p0, Lcom/android/camera/ui/SimpleLongPressGestureDetector$1;->this$0:Lcom/android/camera/ui/SimpleLongPressGestureDetector;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/camera/ui/SimpleLongPressGestureDetector;->access$002(Lcom/android/camera/ui/SimpleLongPressGestureDetector;Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    goto :goto_0
.end method
