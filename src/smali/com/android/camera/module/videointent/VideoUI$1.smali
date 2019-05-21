.class final Lcom/android/camera/module/videointent/VideoUI$1;
.super Landroid/view/GestureDetector$SimpleOnGestureListener;
.source "VideoUI.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/module/videointent/VideoUI;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private synthetic this$0:Lcom/android/camera/module/videointent/VideoUI;


# direct methods
.method constructor <init>(Lcom/android/camera/module/videointent/VideoUI;)V
    .locals 0

    .prologue
    .line 55
    iput-object p1, p0, Lcom/android/camera/module/videointent/VideoUI$1;->this$0:Lcom/android/camera/module/videointent/VideoUI;

    invoke-direct {p0}, Landroid/view/GestureDetector$SimpleOnGestureListener;-><init>()V

    return-void
.end method


# virtual methods
.method public final onSingleTapUp(Landroid/view/MotionEvent;)Z
    .locals 3

    .prologue
    .line 58
    iget-object v0, p0, Lcom/android/camera/module/videointent/VideoUI$1;->this$0:Lcom/android/camera/module/videointent/VideoUI;

    invoke-static {v0}, Lcom/android/camera/module/videointent/VideoUI;->access$000(Lcom/android/camera/module/videointent/VideoUI;)Lcom/android/camera/module/videointent/VideoController;

    move-result-object v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    float-to-int v1, v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    float-to-int v2, v2

    invoke-interface {v0, v1, v2}, Lcom/android/camera/module/videointent/VideoController;->onSingleTapUp$51662RJ4E9NMIP1FEPKMATPFAPKMATPR954IILG_(II)V

    .line 59
    const/4 v0, 0x1

    return v0
.end method
