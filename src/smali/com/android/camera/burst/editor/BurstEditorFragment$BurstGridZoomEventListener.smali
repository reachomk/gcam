.class final Lcom/android/camera/burst/editor/BurstEditorFragment$BurstGridZoomEventListener;
.super Ljava/lang/Object;
.source "BurstEditorFragment.java"

# interfaces
.implements Lcom/android/camera/burst/editor/fullscreen/GridZoomManager$GridZoomEventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/burst/editor/BurstEditorFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "BurstGridZoomEventListener"
.end annotation


# instance fields
.field private synthetic this$0:Lcom/android/camera/burst/editor/BurstEditorFragment;


# direct methods
.method private constructor <init>(Lcom/android/camera/burst/editor/BurstEditorFragment;)V
    .locals 0

    .prologue
    .line 447
    iput-object p1, p0, Lcom/android/camera/burst/editor/BurstEditorFragment$BurstGridZoomEventListener;->this$0:Lcom/android/camera/burst/editor/BurstEditorFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/camera/burst/editor/BurstEditorFragment;B)V
    .locals 0

    .prologue
    .line 447
    invoke-direct {p0, p1}, Lcom/android/camera/burst/editor/BurstEditorFragment$BurstGridZoomEventListener;-><init>(Lcom/android/camera/burst/editor/BurstEditorFragment;)V

    return-void
.end method


# virtual methods
.method public final onDelete(Landroid/net/Uri;)V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 495
    iget-object v0, p0, Lcom/android/camera/burst/editor/BurstEditorFragment$BurstGridZoomEventListener;->this$0:Lcom/android/camera/burst/editor/BurstEditorFragment;

    invoke-static {v0}, Lcom/android/camera/burst/editor/BurstEditorFragment;->access$1400(Lcom/android/camera/burst/editor/BurstEditorFragment;)Lcom/android/camera/data/BurstItem;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/data/BurstItem;->getBurstSize()I

    move-result v0

    if-ne v0, v3, :cond_0

    .line 496
    iget-object v0, p0, Lcom/android/camera/burst/editor/BurstEditorFragment$BurstGridZoomEventListener;->this$0:Lcom/android/camera/burst/editor/BurstEditorFragment;

    invoke-static {v0}, Lcom/android/camera/burst/editor/BurstEditorFragment;->access$1500(Lcom/android/camera/burst/editor/BurstEditorFragment;)V

    .line 501
    :goto_0
    iget-object v0, p0, Lcom/android/camera/burst/editor/BurstEditorFragment$BurstGridZoomEventListener;->this$0:Lcom/android/camera/burst/editor/BurstEditorFragment;

    invoke-static {v0}, Lcom/android/camera/burst/editor/BurstEditorFragment;->access$1700(Lcom/android/camera/burst/editor/BurstEditorFragment;)Lcom/android/camera/stats/BurstEditorLogger;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/android/camera/stats/BurstEditorLogger;->logStackFrameDeletion(I)V

    .line 503
    return-void

    .line 498
    :cond_0
    iget-object v0, p0, Lcom/android/camera/burst/editor/BurstEditorFragment$BurstGridZoomEventListener;->this$0:Lcom/android/camera/burst/editor/BurstEditorFragment;

    new-array v1, v3, [Landroid/net/Uri;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-static {v1}, Lcom/google/common/collect/MapMakerInternalMap$DummyInternalEntry;->newArrayList([Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/burst/editor/BurstEditorFragment;->access$1600(Lcom/android/camera/burst/editor/BurstEditorFragment;Ljava/util/List;)V

    .line 499
    iget-object v0, p0, Lcom/android/camera/burst/editor/BurstEditorFragment$BurstGridZoomEventListener;->this$0:Lcom/android/camera/burst/editor/BurstEditorFragment;

    invoke-static {v0}, Lcom/android/camera/burst/editor/BurstEditorFragment;->access$500(Lcom/android/camera/burst/editor/BurstEditorFragment;)Lcom/android/camera/burst/postprocessing/SingleCreationsGenerator;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/camera/burst/postprocessing/SingleCreationsGenerator;->updateAvailableCreationsAsync()V

    goto :goto_0
.end method

.method public final onEdit(Landroid/net/Uri;)V
    .locals 5

    .prologue
    .line 472
    iget-object v0, p0, Lcom/android/camera/burst/editor/BurstEditorFragment$BurstGridZoomEventListener;->this$0:Lcom/android/camera/burst/editor/BurstEditorFragment;

    invoke-static {v0, p1}, Lcom/android/camera/burst/editor/BurstEditorFragment;->access$1100(Lcom/android/camera/burst/editor/BurstEditorFragment;Landroid/net/Uri;)Lcom/android/camera/data/BurstFrameItem;

    move-result-object v0

    .line 473
    iget-object v1, p0, Lcom/android/camera/burst/editor/BurstEditorFragment$BurstGridZoomEventListener;->this$0:Lcom/android/camera/burst/editor/BurstEditorFragment;

    monitor-enter v1

    .line 476
    :try_start_0
    iget-object v2, p0, Lcom/android/camera/burst/editor/BurstEditorFragment$BurstGridZoomEventListener;->this$0:Lcom/android/camera/burst/editor/BurstEditorFragment;

    invoke-static {v2}, Lcom/android/camera/burst/editor/BurstEditorFragment;->access$1200(Lcom/android/camera/burst/editor/BurstEditorFragment;)Lcom/android/camera/burst/editor/StackImageEditRequest;

    move-result-object v2

    if-nez v2, :cond_0

    .line 477
    iget-object v2, p0, Lcom/android/camera/burst/editor/BurstEditorFragment$BurstGridZoomEventListener;->this$0:Lcom/android/camera/burst/editor/BurstEditorFragment;

    new-instance v3, Lcom/android/camera/burst/editor/StackImageEditRequest;

    invoke-direct {v3, v0}, Lcom/android/camera/burst/editor/StackImageEditRequest;-><init>(Lcom/android/camera/data/BurstFrameItem;)V

    invoke-static {v2, v3}, Lcom/android/camera/burst/editor/BurstEditorFragment;->access$1202(Lcom/android/camera/burst/editor/BurstEditorFragment;Lcom/android/camera/burst/editor/StackImageEditRequest;)Lcom/android/camera/burst/editor/StackImageEditRequest;

    .line 478
    iget-object v0, p0, Lcom/android/camera/burst/editor/BurstEditorFragment$BurstGridZoomEventListener;->this$0:Lcom/android/camera/burst/editor/BurstEditorFragment;

    invoke-static {v0}, Lcom/android/camera/burst/editor/BurstEditorFragment;->access$1200(Lcom/android/camera/burst/editor/BurstEditorFragment;)Lcom/android/camera/burst/editor/StackImageEditRequest;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/burst/editor/StackImageEditRequest;->createEditIntent()Landroid/content/Intent;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 480
    :try_start_1
    iget-object v2, p0, Lcom/android/camera/burst/editor/BurstEditorFragment$BurstGridZoomEventListener;->this$0:Lcom/android/camera/burst/editor/BurstEditorFragment;

    const/4 v3, 0x1

    invoke-virtual {v2, v0, v3}, Lcom/android/camera/burst/editor/BurstEditorFragment;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_1
    .catch Landroid/content/ActivityNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 490
    :goto_0
    :try_start_2
    monitor-exit v1

    return-void

    .line 482
    :catch_0
    move-exception v2

    iget-object v2, p0, Lcom/android/camera/burst/editor/BurstEditorFragment$BurstGridZoomEventListener;->this$0:Lcom/android/camera/burst/editor/BurstEditorFragment;

    iget-object v3, p0, Lcom/android/camera/burst/editor/BurstEditorFragment$BurstGridZoomEventListener;->this$0:Lcom/android/camera/burst/editor/BurstEditorFragment;

    .line 484
    invoke-virtual {v3}, Lcom/android/camera/burst/editor/BurstEditorFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0a01d9

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 483
    invoke-static {v0, v3}, Landroid/content/Intent;->createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;)Landroid/content/Intent;

    move-result-object v0

    const/4 v3, 0x1

    .line 482
    invoke-virtual {v2, v0, v3}, Lcom/android/camera/burst/editor/BurstEditorFragment;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0

    .line 490
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    .line 488
    :cond_0
    :try_start_3
    invoke-static {}, Lcom/android/camera/burst/editor/BurstEditorFragment;->access$1300()Ljava/lang/String;

    move-result-object v0

    const-string v2, "Edit request already in progress"

    invoke-static {v0, v2}, Lcom/android/camera/debug/Log;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0
.end method

.method public final onShare(Landroid/net/Uri;)V
    .locals 4

    .prologue
    .line 460
    const-string v0, "android.intent.action.SEND"

    invoke-static {v0}, Lcom/android/camera/burst/editor/BurstEditorFragment;->access$1000(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 461
    const-string v1, "android.intent.extra.STREAM"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 463
    :try_start_0
    iget-object v1, p0, Lcom/android/camera/burst/editor/BurstEditorFragment$BurstGridZoomEventListener;->this$0:Lcom/android/camera/burst/editor/BurstEditorFragment;

    invoke-virtual {v1, v0}, Lcom/android/camera/burst/editor/BurstEditorFragment;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 468
    :goto_0
    return-void

    .line 465
    :catch_0
    move-exception v1

    iget-object v1, p0, Lcom/android/camera/burst/editor/BurstEditorFragment$BurstGridZoomEventListener;->this$0:Lcom/android/camera/burst/editor/BurstEditorFragment;

    iget-object v2, p0, Lcom/android/camera/burst/editor/BurstEditorFragment$BurstGridZoomEventListener;->this$0:Lcom/android/camera/burst/editor/BurstEditorFragment;

    .line 466
    invoke-virtual {v2}, Lcom/android/camera/burst/editor/BurstEditorFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0a01d8

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/content/Intent;->createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;)Landroid/content/Intent;

    move-result-object v0

    .line 465
    invoke-virtual {v1, v0}, Lcom/android/camera/burst/editor/BurstEditorFragment;->startActivity(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method public final onSwipeableThumbnailNeeded(Landroid/net/Uri;)Lcom/bumptech/glide/RequestBuilder;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/net/Uri;",
            ")",
            "Lcom/bumptech/glide/RequestBuilder",
            "<",
            "Landroid/graphics/drawable/Drawable;",
            ">;"
        }
    .end annotation

    .prologue
    .line 525
    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/android/camera/burst/editor/BurstEditorFragment$BurstGridZoomEventListener;->this$0:Lcom/android/camera/burst/editor/BurstEditorFragment;

    invoke-static {v1}, Lcom/android/camera/burst/editor/BurstEditorFragment;->access$1800(Lcom/android/camera/burst/editor/BurstEditorFragment;)Lcom/android/camera/burst/editor/BurstGridSections;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/burst/editor/BurstGridSections;->numRecyclerViewElements()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 526
    iget-object v1, p0, Lcom/android/camera/burst/editor/BurstEditorFragment$BurstGridZoomEventListener;->this$0:Lcom/android/camera/burst/editor/BurstEditorFragment;

    invoke-static {v1}, Lcom/android/camera/burst/editor/BurstEditorFragment;->access$1800(Lcom/android/camera/burst/editor/BurstEditorFragment;)Lcom/android/camera/burst/editor/BurstGridSections;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/android/camera/burst/editor/BurstGridSections;->elementAt(I)Lcom/android/camera/burst/editor/BurstGridSections$Element;

    move-result-object v1

    .line 527
    invoke-virtual {v1}, Lcom/android/camera/burst/editor/BurstGridSections$Element;->isHeader()Z

    move-result v2

    if-nez v2, :cond_0

    .line 530
    invoke-virtual {v1}, Lcom/android/camera/burst/editor/BurstGridSections$Element;->getBurstFrameItem()Lcom/android/camera/data/BurstFrameItem;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/data/BurstFrameItem;->getData()Lcom/android/camera/data/FilmstripItemData;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/data/FilmstripItemData;->getUri()Landroid/net/Uri;

    move-result-object v1

    if-ne v1, p1, :cond_0

    .line 533
    iget-object v1, p0, Lcom/android/camera/burst/editor/BurstEditorFragment$BurstGridZoomEventListener;->this$0:Lcom/android/camera/burst/editor/BurstEditorFragment;

    invoke-static {v1}, Lcom/android/camera/burst/editor/BurstEditorFragment;->access$1900(Lcom/android/camera/burst/editor/BurstEditorFragment;)Lcom/android/camera/burst/editor/grid/BurstGrid;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/android/camera/burst/editor/grid/BurstGrid;->viewHolderForPosition(I)Lcom/android/camera/burst/editor/grid/GridFrameViewHolder;

    move-result-object v1

    .line 534
    if-eqz v1, :cond_0

    .line 538
    invoke-virtual {v1}, Lcom/android/camera/burst/editor/grid/GridFrameViewHolder;->getRequest()Lcom/bumptech/glide/RequestBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bumptech/glide/RequestBuilder;->clone()Lcom/bumptech/glide/RequestBuilder;

    move-result-object v0

    .line 540
    :goto_1
    return-object v0

    .line 525
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 540
    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public final onZoomInStarted()V
    .locals 1

    .prologue
    .line 450
    iget-object v0, p0, Lcom/android/camera/burst/editor/BurstEditorFragment$BurstGridZoomEventListener;->this$0:Lcom/android/camera/burst/editor/BurstEditorFragment;

    invoke-static {v0}, Lcom/android/camera/burst/editor/BurstEditorFragment;->access$900(Lcom/android/camera/burst/editor/BurstEditorFragment;)Lcom/android/camera/burst/editor/AddCreationFabMenu;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/burst/editor/AddCreationFabMenu;->hide()V

    .line 451
    return-void
.end method

.method public final onZoomOutFinished()V
    .locals 1

    .prologue
    .line 455
    iget-object v0, p0, Lcom/android/camera/burst/editor/BurstEditorFragment$BurstGridZoomEventListener;->this$0:Lcom/android/camera/burst/editor/BurstEditorFragment;

    invoke-static {v0}, Lcom/android/camera/burst/editor/BurstEditorFragment;->access$900(Lcom/android/camera/burst/editor/BurstEditorFragment;)Lcom/android/camera/burst/editor/AddCreationFabMenu;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/burst/editor/AddCreationFabMenu;->show()V

    .line 456
    return-void
.end method

.method public final onZoomOutStarted(Lcom/android/camera/data/BurstFrameItem;Lcom/android/camera/burst/editor/BurstGridSections$GridElementType;)Lcom/android/camera/burst/editor/grid/GridFrameViewHolder;
    .locals 3

    .prologue
    .line 509
    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/android/camera/burst/editor/BurstEditorFragment$BurstGridZoomEventListener;->this$0:Lcom/android/camera/burst/editor/BurstEditorFragment;

    invoke-static {v1}, Lcom/android/camera/burst/editor/BurstEditorFragment;->access$1800(Lcom/android/camera/burst/editor/BurstEditorFragment;)Lcom/android/camera/burst/editor/BurstGridSections;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/burst/editor/BurstGridSections;->numRecyclerViewElements()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 510
    iget-object v1, p0, Lcom/android/camera/burst/editor/BurstEditorFragment$BurstGridZoomEventListener;->this$0:Lcom/android/camera/burst/editor/BurstEditorFragment;

    invoke-static {v1}, Lcom/android/camera/burst/editor/BurstEditorFragment;->access$1800(Lcom/android/camera/burst/editor/BurstEditorFragment;)Lcom/android/camera/burst/editor/BurstGridSections;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/android/camera/burst/editor/BurstGridSections;->elementAt(I)Lcom/android/camera/burst/editor/BurstGridSections$Element;

    move-result-object v1

    .line 511
    invoke-virtual {v1}, Lcom/android/camera/burst/editor/BurstGridSections$Element;->getElementType()Lcom/android/camera/burst/editor/BurstGridSections$GridElementType;

    move-result-object v2

    if-ne v2, p2, :cond_0

    .line 514
    invoke-virtual {v1}, Lcom/android/camera/burst/editor/BurstGridSections$Element;->getBurstFrameItem()Lcom/android/camera/data/BurstFrameItem;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/data/BurstFrameItem;->getData()Lcom/android/camera/data/FilmstripItemData;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/data/FilmstripItemData;->getUri()Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {p1}, Lcom/android/camera/data/BurstFrameItem;->getData()Lcom/android/camera/data/FilmstripItemData;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/camera/data/FilmstripItemData;->getUri()Landroid/net/Uri;

    move-result-object v2

    if-ne v1, v2, :cond_0

    .line 517
    iget-object v1, p0, Lcom/android/camera/burst/editor/BurstEditorFragment$BurstGridZoomEventListener;->this$0:Lcom/android/camera/burst/editor/BurstEditorFragment;

    invoke-static {v1}, Lcom/android/camera/burst/editor/BurstEditorFragment;->access$1900(Lcom/android/camera/burst/editor/BurstEditorFragment;)Lcom/android/camera/burst/editor/grid/BurstGrid;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/android/camera/burst/editor/grid/BurstGrid;->viewHolderForPosition(I)Lcom/android/camera/burst/editor/grid/GridFrameViewHolder;

    move-result-object v0

    .line 519
    :goto_1
    return-object v0

    .line 509
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 519
    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method
