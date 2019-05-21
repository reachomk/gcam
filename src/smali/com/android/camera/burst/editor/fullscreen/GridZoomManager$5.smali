.class final Lcom/android/camera/burst/editor/fullscreen/GridZoomManager$5;
.super Landroid/animation/AnimatorListenerAdapter;
.source "GridZoomManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/burst/editor/fullscreen/GridZoomManager;->zoomOut()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private synthetic this$0:Lcom/android/camera/burst/editor/fullscreen/GridZoomManager;

.field private synthetic val$activeImageView:Lcom/ortiz/touch/TouchImageView;

.field private synthetic val$gridImageView:Lcom/android/camera/burst/editor/grid/BurstImageView;


# direct methods
.method constructor <init>(Lcom/android/camera/burst/editor/fullscreen/GridZoomManager;Lcom/android/camera/burst/editor/grid/BurstImageView;Lcom/ortiz/touch/TouchImageView;)V
    .locals 0

    .prologue
    .line 670
    iput-object p1, p0, Lcom/android/camera/burst/editor/fullscreen/GridZoomManager$5;->this$0:Lcom/android/camera/burst/editor/fullscreen/GridZoomManager;

    iput-object p2, p0, Lcom/android/camera/burst/editor/fullscreen/GridZoomManager$5;->val$gridImageView:Lcom/android/camera/burst/editor/grid/BurstImageView;

    iput-object p3, p0, Lcom/android/camera/burst/editor/fullscreen/GridZoomManager$5;->val$activeImageView:Lcom/ortiz/touch/TouchImageView;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAnimationCancel(Landroid/animation/Animator;)V
    .locals 0

    .prologue
    .line 691
    invoke-virtual {p0, p1}, Lcom/android/camera/burst/editor/fullscreen/GridZoomManager$5;->onAnimationEnd(Landroid/animation/Animator;)V

    .line 692
    return-void
.end method

.method public final onAnimationEnd(Landroid/animation/Animator;)V
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x0

    const/high16 v2, 0x3f800000    # 1.0f

    .line 673
    iget-object v0, p0, Lcom/android/camera/burst/editor/fullscreen/GridZoomManager$5;->val$gridImageView:Lcom/android/camera/burst/editor/grid/BurstImageView;

    invoke-virtual {v0, v2}, Lcom/android/camera/burst/editor/grid/BurstImageView;->setAlpha(F)V

    .line 674
    iget-object v0, p0, Lcom/android/camera/burst/editor/fullscreen/GridZoomManager$5;->this$0:Lcom/android/camera/burst/editor/fullscreen/GridZoomManager;

    const/4 v1, 0x4

    invoke-static {v0, v1}, Lcom/android/camera/burst/editor/fullscreen/GridZoomManager;->access$1100(Lcom/android/camera/burst/editor/fullscreen/GridZoomManager;I)V

    .line 679
    iget-object v0, p0, Lcom/android/camera/burst/editor/fullscreen/GridZoomManager$5;->val$activeImageView:Lcom/ortiz/touch/TouchImageView;

    invoke-virtual {v0, v3}, Lcom/ortiz/touch/TouchImageView;->setTranslationX(F)V

    .line 680
    iget-object v0, p0, Lcom/android/camera/burst/editor/fullscreen/GridZoomManager$5;->val$activeImageView:Lcom/ortiz/touch/TouchImageView;

    invoke-virtual {v0, v3}, Lcom/ortiz/touch/TouchImageView;->setTranslationY(F)V

    .line 681
    iget-object v0, p0, Lcom/android/camera/burst/editor/fullscreen/GridZoomManager$5;->val$activeImageView:Lcom/ortiz/touch/TouchImageView;

    invoke-virtual {v0, v2}, Lcom/ortiz/touch/TouchImageView;->setScaleX(F)V

    .line 682
    iget-object v0, p0, Lcom/android/camera/burst/editor/fullscreen/GridZoomManager$5;->val$activeImageView:Lcom/ortiz/touch/TouchImageView;

    invoke-virtual {v0, v2}, Lcom/ortiz/touch/TouchImageView;->setScaleY(F)V

    .line 683
    iget-object v0, p0, Lcom/android/camera/burst/editor/fullscreen/GridZoomManager$5;->val$activeImageView:Lcom/ortiz/touch/TouchImageView;

    invoke-virtual {v0, v4}, Lcom/ortiz/touch/TouchImageView;->setClipBounds(Landroid/graphics/Rect;)V

    .line 684
    iget-object v0, p0, Lcom/android/camera/burst/editor/fullscreen/GridZoomManager$5;->this$0:Lcom/android/camera/burst/editor/fullscreen/GridZoomManager;

    invoke-static {v0, v4}, Lcom/android/camera/burst/editor/fullscreen/GridZoomManager;->access$1002(Lcom/android/camera/burst/editor/fullscreen/GridZoomManager;Landroid/animation/Animator;)Landroid/animation/Animator;

    .line 685
    iget-object v0, p0, Lcom/android/camera/burst/editor/fullscreen/GridZoomManager$5;->this$0:Lcom/android/camera/burst/editor/fullscreen/GridZoomManager;

    invoke-static {v0}, Lcom/android/camera/burst/editor/fullscreen/GridZoomManager;->access$600(Lcom/android/camera/burst/editor/fullscreen/GridZoomManager;)Lcom/android/camera/burst/editor/fullscreen/GridZoomManager$GridZoomEventListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/camera/burst/editor/fullscreen/GridZoomManager$GridZoomEventListener;->onZoomOutFinished()V

    .line 686
    iget-object v0, p0, Lcom/android/camera/burst/editor/fullscreen/GridZoomManager$5;->this$0:Lcom/android/camera/burst/editor/fullscreen/GridZoomManager;

    invoke-static {v0}, Lcom/android/camera/burst/editor/fullscreen/GridZoomManager;->access$1200(Lcom/android/camera/burst/editor/fullscreen/GridZoomManager;)V

    .line 687
    return-void
.end method
