.class final Lcom/android/camera/burst/editor/fullscreen/GridZoomManager$3;
.super Ljava/lang/Object;
.source "GridZoomManager.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnPreDrawListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/burst/editor/fullscreen/GridZoomManager;->zoomIn(Lcom/android/camera/burst/editor/grid/GridFrameViewHolder;Lcom/android/camera/burst/editor/BurstGridSections$GridElementType;Ljava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private synthetic this$0:Lcom/android/camera/burst/editor/fullscreen/GridZoomManager;

.field private synthetic val$gridImageView:Lcom/android/camera/burst/editor/grid/BurstImageView;


# direct methods
.method constructor <init>(Lcom/android/camera/burst/editor/fullscreen/GridZoomManager;Lcom/android/camera/burst/editor/grid/BurstImageView;)V
    .locals 0

    .prologue
    .line 455
    iput-object p1, p0, Lcom/android/camera/burst/editor/fullscreen/GridZoomManager$3;->this$0:Lcom/android/camera/burst/editor/fullscreen/GridZoomManager;

    iput-object p2, p0, Lcom/android/camera/burst/editor/fullscreen/GridZoomManager$3;->val$gridImageView:Lcom/android/camera/burst/editor/grid/BurstImageView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onPreDraw()Z
    .locals 2

    .prologue
    .line 458
    iget-object v0, p0, Lcom/android/camera/burst/editor/fullscreen/GridZoomManager$3;->this$0:Lcom/android/camera/burst/editor/fullscreen/GridZoomManager;

    iget-object v1, p0, Lcom/android/camera/burst/editor/fullscreen/GridZoomManager$3;->val$gridImageView:Lcom/android/camera/burst/editor/grid/BurstImageView;

    invoke-static {v0, v1}, Lcom/android/camera/burst/editor/fullscreen/GridZoomManager;->access$700(Lcom/android/camera/burst/editor/fullscreen/GridZoomManager;Lcom/android/camera/burst/editor/grid/BurstImageView;)V

    .line 459
    iget-object v0, p0, Lcom/android/camera/burst/editor/fullscreen/GridZoomManager$3;->this$0:Lcom/android/camera/burst/editor/fullscreen/GridZoomManager;

    invoke-static {v0}, Lcom/android/camera/burst/editor/fullscreen/GridZoomManager;->access$100(Lcom/android/camera/burst/editor/fullscreen/GridZoomManager;)Landroid/support/v4/view/ViewPager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/view/ViewPager;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    .line 460
    const/4 v0, 0x0

    return v0
.end method
