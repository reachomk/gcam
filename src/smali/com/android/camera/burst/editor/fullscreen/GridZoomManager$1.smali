.class final Lcom/android/camera/burst/editor/fullscreen/GridZoomManager$1;
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
    .line 170
    iput-object p1, p0, Lcom/android/camera/burst/editor/fullscreen/GridZoomManager$1;->this$0:Lcom/android/camera/burst/editor/fullscreen/GridZoomManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onPageScrollStateChanged(I)V
    .locals 4

    .prologue
    .line 185
    if-nez p1, :cond_1

    .line 187
    iget-object v0, p0, Lcom/android/camera/burst/editor/fullscreen/GridZoomManager$1;->this$0:Lcom/android/camera/burst/editor/fullscreen/GridZoomManager;

    invoke-static {v0}, Lcom/android/camera/burst/editor/fullscreen/GridZoomManager;->access$000(Lcom/android/camera/burst/editor/fullscreen/GridZoomManager;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 188
    iget-object v1, p0, Lcom/android/camera/burst/editor/fullscreen/GridZoomManager$1;->this$0:Lcom/android/camera/burst/editor/fullscreen/GridZoomManager;

    invoke-static {v1}, Lcom/android/camera/burst/editor/fullscreen/GridZoomManager;->access$200(Lcom/android/camera/burst/editor/fullscreen/GridZoomManager;)Ljava/util/List;

    move-result-object v1

    iget-object v3, p0, Lcom/android/camera/burst/editor/fullscreen/GridZoomManager$1;->this$0:Lcom/android/camera/burst/editor/fullscreen/GridZoomManager;

    invoke-static {v3}, Lcom/android/camera/burst/editor/fullscreen/GridZoomManager;->access$100(Lcom/android/camera/burst/editor/fullscreen/GridZoomManager;)Landroid/support/v4/view/ViewPager;

    move-result-object v3

    invoke-virtual {v3}, Landroid/support/v4/view/ViewPager;->getCurrentItem()I

    move-result v3

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/camera/data/BurstFrameItem;

    invoke-virtual {v1}, Lcom/android/camera/data/BurstFrameItem;->getData()Lcom/android/camera/data/FilmstripItemData;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/data/FilmstripItemData;->getUri()Landroid/net/Uri;

    move-result-object v1

    .line 189
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 190
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ortiz/touch/TouchImageView;

    invoke-virtual {v0}, Lcom/ortiz/touch/TouchImageView;->resetZoom()V

    goto :goto_0

    .line 194
    :cond_1
    return-void
.end method

.method public final onPageSelected$514IILG_()V
    .locals 0

    .prologue
    .line 179
    return-void
.end method
