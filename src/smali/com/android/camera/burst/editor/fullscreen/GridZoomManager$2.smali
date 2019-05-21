.class final Lcom/android/camera/burst/editor/fullscreen/GridZoomManager$2;
.super Ljava/lang/Object;
.source "GridZoomManager.java"

# interfaces
.implements Landroid/support/v4/view/ViewPager$OnPageChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/burst/editor/fullscreen/GridZoomManager;->setup(Landroid/view/ViewGroup;Landroid/support/v7/widget/RecyclerView;Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private synthetic this$0:Lcom/android/camera/burst/editor/fullscreen/GridZoomManager;


# direct methods
.method constructor <init>(Lcom/android/camera/burst/editor/fullscreen/GridZoomManager;)V
    .locals 0

    .prologue
    .line 202
    iput-object p1, p0, Lcom/android/camera/burst/editor/fullscreen/GridZoomManager$2;->this$0:Lcom/android/camera/burst/editor/fullscreen/GridZoomManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onPageScrollStateChanged(I)V
    .locals 0

    .prologue
    .line 216
    return-void
.end method

.method public final onPageSelected$514IILG_()V
    .locals 3

    .prologue
    .line 210
    iget-object v1, p0, Lcom/android/camera/burst/editor/fullscreen/GridZoomManager$2;->this$0:Lcom/android/camera/burst/editor/fullscreen/GridZoomManager;

    iget-object v0, p0, Lcom/android/camera/burst/editor/fullscreen/GridZoomManager$2;->this$0:Lcom/android/camera/burst/editor/fullscreen/GridZoomManager;

    invoke-static {v0}, Lcom/android/camera/burst/editor/fullscreen/GridZoomManager;->access$200(Lcom/android/camera/burst/editor/fullscreen/GridZoomManager;)Ljava/util/List;

    move-result-object v0

    iget-object v2, p0, Lcom/android/camera/burst/editor/fullscreen/GridZoomManager$2;->this$0:Lcom/android/camera/burst/editor/fullscreen/GridZoomManager;

    invoke-static {v2}, Lcom/android/camera/burst/editor/fullscreen/GridZoomManager;->access$100(Lcom/android/camera/burst/editor/fullscreen/GridZoomManager;)Landroid/support/v4/view/ViewPager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/support/v4/view/ViewPager;->getCurrentItem()I

    move-result v2

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/data/BurstFrameItem;

    invoke-virtual {v0}, Lcom/android/camera/data/BurstFrameItem;->getData()Lcom/android/camera/data/FilmstripItemData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/data/FilmstripItemData;->getUri()Landroid/net/Uri;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/android/camera/burst/editor/fullscreen/GridZoomManager;->access$400(Lcom/android/camera/burst/editor/fullscreen/GridZoomManager;Landroid/net/Uri;)V

    .line 211
    return-void
.end method
