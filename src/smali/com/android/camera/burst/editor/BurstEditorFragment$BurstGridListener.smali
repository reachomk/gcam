.class final Lcom/android/camera/burst/editor/BurstEditorFragment$BurstGridListener;
.super Ljava/lang/Object;
.source "BurstEditorFragment.java"

# interfaces
.implements Lcom/android/camera/burst/editor/grid/BurstGrid$Listener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/burst/editor/BurstEditorFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "BurstGridListener"
.end annotation


# instance fields
.field private synthetic this$0:Lcom/android/camera/burst/editor/BurstEditorFragment;


# direct methods
.method private constructor <init>(Lcom/android/camera/burst/editor/BurstEditorFragment;)V
    .locals 0

    .prologue
    .line 544
    iput-object p1, p0, Lcom/android/camera/burst/editor/BurstEditorFragment$BurstGridListener;->this$0:Lcom/android/camera/burst/editor/BurstEditorFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/camera/burst/editor/BurstEditorFragment;B)V
    .locals 0

    .prologue
    .line 544
    invoke-direct {p0, p1}, Lcom/android/camera/burst/editor/BurstEditorFragment$BurstGridListener;-><init>(Lcom/android/camera/burst/editor/BurstEditorFragment;)V

    return-void
.end method


# virtual methods
.method public final onElementClicked(Lcom/android/camera/burst/editor/grid/GridFrameViewHolder;)V
    .locals 3

    .prologue
    .line 547
    invoke-virtual {p1}, Lcom/android/camera/burst/editor/grid/GridFrameViewHolder;->getElementType()Lcom/android/camera/burst/editor/BurstGridSections$GridElementType;

    move-result-object v1

    .line 550
    sget-object v0, Lcom/android/camera/burst/editor/BurstGridSections$GridElementType;->ALL_ELEMENTS_THUMBNAIL:Lcom/android/camera/burst/editor/BurstGridSections$GridElementType;

    if-ne v1, v0, :cond_0

    .line 551
    iget-object v0, p0, Lcom/android/camera/burst/editor/BurstEditorFragment$BurstGridListener;->this$0:Lcom/android/camera/burst/editor/BurstEditorFragment;

    invoke-static {v0}, Lcom/android/camera/burst/editor/BurstEditorFragment;->access$1400(Lcom/android/camera/burst/editor/BurstEditorFragment;)Lcom/android/camera/data/BurstItem;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/data/BurstItem;->getBurstItemData()Lcom/android/camera/data/BurstItemData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/data/BurstItemData;->getBurstList()Ljava/util/List;

    move-result-object v0

    .line 558
    :goto_0
    iget-object v2, p0, Lcom/android/camera/burst/editor/BurstEditorFragment$BurstGridListener;->this$0:Lcom/android/camera/burst/editor/BurstEditorFragment;

    invoke-static {v2}, Lcom/android/camera/burst/editor/BurstEditorFragment;->access$400(Lcom/android/camera/burst/editor/BurstEditorFragment;)Lcom/android/camera/burst/editor/fullscreen/GridZoomManager;

    move-result-object v2

    invoke-virtual {v2, p1, v1, v0}, Lcom/android/camera/burst/editor/fullscreen/GridZoomManager;->zoomIn(Lcom/android/camera/burst/editor/grid/GridFrameViewHolder;Lcom/android/camera/burst/editor/BurstGridSections$GridElementType;Ljava/util/List;)V

    .line 559
    return-void

    .line 552
    :cond_0
    sget-object v0, Lcom/android/camera/burst/editor/BurstGridSections$GridElementType;->BEST_ELEMENTS_THUMBNAIL:Lcom/android/camera/burst/editor/BurstGridSections$GridElementType;

    if-ne v1, v0, :cond_1

    .line 553
    iget-object v0, p0, Lcom/android/camera/burst/editor/BurstEditorFragment$BurstGridListener;->this$0:Lcom/android/camera/burst/editor/BurstEditorFragment;

    invoke-static {v0}, Lcom/android/camera/burst/editor/BurstEditorFragment;->access$1400(Lcom/android/camera/burst/editor/BurstEditorFragment;)Lcom/android/camera/data/BurstItem;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/data/BurstItem;->getBurstItemData()Lcom/android/camera/data/BurstItemData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/data/BurstItemData;->getBestList()Ljava/util/List;

    move-result-object v0

    goto :goto_0

    .line 555
    :cond_1
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Can\'t zoom in on non-thumbnail section elements."

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
