.class public final Lcom/android/camera/burst/editor/BurstEditorFragment;
.super Landroid/app/DialogFragment;
.source "BurstEditorFragment.java"

# interfaces
.implements Lcom/android/camera/burst/editor/EditorToolbar$Listener;
.implements Lcom/android/camera/filmstrip/FilmstripDataAdapter$Listener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/camera/burst/editor/BurstEditorFragment$BurstGridListener;,
        Lcom/android/camera/burst/editor/BurstEditorFragment$BurstGridZoomEventListener;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private addCreationFabMenu:Lcom/android/camera/burst/editor/AddCreationFabMenu;

.field private volatile bestShot:Lcom/android/camera/data/BurstFrameItem;

.field private burstItem:Lcom/android/camera/data/BurstItem;

.field private creationsGenerator:Lcom/android/camera/burst/postprocessing/SingleCreationsGenerator;

.field private filmstripController:Lcom/android/camera/filmstrip/FilmstripController;

.field private final framesSelectionController$9HHMUR9FC5N68SJFD5I2UOR1DLIN4O9FC9QN4SRK5TIM8QBKDTP2UPRID5I2UKR5DHIM6T39DTN46RREEHP6UR3CCLP3M___:Lcom/android/camera/module/video2/VideoModeModule;

.field private grid:Lcom/android/camera/burst/editor/grid/BurstGrid;

.field private final gridListener:Lcom/android/camera/burst/editor/grid/BurstGrid$Listener;

.field private gridZoomManager:Lcom/android/camera/burst/editor/fullscreen/GridZoomManager;

.field private initialized:Z

.field private isSecureCamera:Z

.field private sections:Lcom/android/camera/burst/editor/BurstGridSections;

.field private stackImageEditRequest:Lcom/android/camera/burst/editor/StackImageEditRequest;

.field private statsLogger:Lcom/android/camera/stats/BurstEditorLogger;

.field private toolbar:Lcom/android/camera/burst/editor/EditorToolbar;

.field private final zoomListener:Lcom/android/camera/burst/editor/fullscreen/GridZoomManager$GridZoomEventListener;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 59
    const-string v0, "BurstEditFrag"

    invoke-static {v0}, Lcom/android/camera/debug/Log;->makeTag(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/camera/burst/editor/BurstEditorFragment;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 121
    invoke-direct {p0}, Landroid/app/DialogFragment;-><init>()V

    .line 65
    new-instance v0, Lcom/android/camera/burst/editor/BurstEditorFragment$BurstGridListener;

    invoke-direct {v0, p0, v1}, Lcom/android/camera/burst/editor/BurstEditorFragment$BurstGridListener;-><init>(Lcom/android/camera/burst/editor/BurstEditorFragment;B)V

    iput-object v0, p0, Lcom/android/camera/burst/editor/BurstEditorFragment;->gridListener:Lcom/android/camera/burst/editor/grid/BurstGrid$Listener;

    .line 124
    new-instance v0, Lcom/android/camera/burst/editor/BurstEditorFragment$BurstGridZoomEventListener;

    invoke-direct {v0, p0, v1}, Lcom/android/camera/burst/editor/BurstEditorFragment$BurstGridZoomEventListener;-><init>(Lcom/android/camera/burst/editor/BurstEditorFragment;B)V

    iput-object v0, p0, Lcom/android/camera/burst/editor/BurstEditorFragment;->zoomListener:Lcom/android/camera/burst/editor/fullscreen/GridZoomManager$GridZoomEventListener;

    .line 125
    iput-boolean v1, p0, Lcom/android/camera/burst/editor/BurstEditorFragment;->initialized:Z

    .line 126
    new-instance v0, Lcom/android/camera/module/video2/VideoModeModule;

    invoke-direct {v0}, Lcom/android/camera/module/video2/VideoModeModule;-><init>()V

    iput-object v0, p0, Lcom/android/camera/burst/editor/BurstEditorFragment;->framesSelectionController$9HHMUR9FC5N68SJFD5I2UOR1DLIN4O9FC9QN4SRK5TIM8QBKDTP2UPRID5I2UKR5DHIM6T39DTN46RREEHP6UR3CCLP3M___:Lcom/android/camera/module/video2/VideoModeModule;

    .line 127
    new-instance v0, Lcom/android/camera/burst/editor/grid/BurstGrid;

    iget-object v1, p0, Lcom/android/camera/burst/editor/BurstEditorFragment;->gridListener:Lcom/android/camera/burst/editor/grid/BurstGrid$Listener;

    invoke-direct {v0, v1}, Lcom/android/camera/burst/editor/grid/BurstGrid;-><init>(Lcom/android/camera/burst/editor/grid/BurstGrid$Listener;)V

    iput-object v0, p0, Lcom/android/camera/burst/editor/BurstEditorFragment;->grid:Lcom/android/camera/burst/editor/grid/BurstGrid;

    .line 128
    return-void
.end method

.method static synthetic access$1000(Ljava/lang/String;)Landroid/content/Intent;
    .locals 1

    .prologue
    .line 57
    invoke-static {p0}, Lcom/android/camera/burst/editor/BurstEditorFragment;->createBaseShareIntent(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1100(Lcom/android/camera/burst/editor/BurstEditorFragment;Landroid/net/Uri;)Lcom/android/camera/data/BurstFrameItem;
    .locals 1

    .prologue
    .line 57
    invoke-direct {p0, p1}, Lcom/android/camera/burst/editor/BurstEditorFragment;->getItem(Landroid/net/Uri;)Lcom/android/camera/data/BurstFrameItem;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1200(Lcom/android/camera/burst/editor/BurstEditorFragment;)Lcom/android/camera/burst/editor/StackImageEditRequest;
    .locals 1

    .prologue
    .line 57
    iget-object v0, p0, Lcom/android/camera/burst/editor/BurstEditorFragment;->stackImageEditRequest:Lcom/android/camera/burst/editor/StackImageEditRequest;

    return-object v0
.end method

.method static synthetic access$1202(Lcom/android/camera/burst/editor/BurstEditorFragment;Lcom/android/camera/burst/editor/StackImageEditRequest;)Lcom/android/camera/burst/editor/StackImageEditRequest;
    .locals 0

    .prologue
    .line 57
    iput-object p1, p0, Lcom/android/camera/burst/editor/BurstEditorFragment;->stackImageEditRequest:Lcom/android/camera/burst/editor/StackImageEditRequest;

    return-object p1
.end method

.method static synthetic access$1300()Ljava/lang/String;
    .locals 1

    .prologue
    .line 57
    sget-object v0, Lcom/android/camera/burst/editor/BurstEditorFragment;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/android/camera/burst/editor/BurstEditorFragment;)Lcom/android/camera/data/BurstItem;
    .locals 1

    .prologue
    .line 57
    iget-object v0, p0, Lcom/android/camera/burst/editor/BurstEditorFragment;->burstItem:Lcom/android/camera/data/BurstItem;

    return-object v0
.end method

.method static synthetic access$1500(Lcom/android/camera/burst/editor/BurstEditorFragment;)V
    .locals 0

    .prologue
    .line 57
    invoke-direct {p0}, Lcom/android/camera/burst/editor/BurstEditorFragment;->dismissAndRemoveBurstItemFromFilmstrip()V

    return-void
.end method

.method static synthetic access$1600(Lcom/android/camera/burst/editor/BurstEditorFragment;Ljava/util/List;)V
    .locals 0

    .prologue
    .line 57
    invoke-direct {p0, p1}, Lcom/android/camera/burst/editor/BurstEditorFragment;->removeAndDeleteItems(Ljava/util/List;)V

    return-void
.end method

.method static synthetic access$1700(Lcom/android/camera/burst/editor/BurstEditorFragment;)Lcom/android/camera/stats/BurstEditorLogger;
    .locals 1

    .prologue
    .line 57
    iget-object v0, p0, Lcom/android/camera/burst/editor/BurstEditorFragment;->statsLogger:Lcom/android/camera/stats/BurstEditorLogger;

    return-object v0
.end method

.method static synthetic access$1800(Lcom/android/camera/burst/editor/BurstEditorFragment;)Lcom/android/camera/burst/editor/BurstGridSections;
    .locals 1

    .prologue
    .line 57
    iget-object v0, p0, Lcom/android/camera/burst/editor/BurstEditorFragment;->sections:Lcom/android/camera/burst/editor/BurstGridSections;

    return-object v0
.end method

.method static synthetic access$1900(Lcom/android/camera/burst/editor/BurstEditorFragment;)Lcom/android/camera/burst/editor/grid/BurstGrid;
    .locals 1

    .prologue
    .line 57
    iget-object v0, p0, Lcom/android/camera/burst/editor/BurstEditorFragment;->grid:Lcom/android/camera/burst/editor/grid/BurstGrid;

    return-object v0
.end method

.method static synthetic access$200$51666RRD5TGMSP3IDTKM8BR3C5MMASJ15TH7ASJJEGNMAP39EHNN4BQ2ELP76T25CHKN8RRI8PP62PRDCLN78EP99HHMUR9FC5N68SJFD5I2UOR1DLIN4O9FC9QN4SRK5TIM8QBKDTP2UPRID5I2UKR5DHIM6T39DTN46RREEHP6UR3CCLP3M___(Lcom/android/camera/burst/editor/BurstEditorFragment;)Lcom/android/camera/module/video2/VideoModeModule;
    .locals 1

    .prologue
    .line 57
    iget-object v0, p0, Lcom/android/camera/burst/editor/BurstEditorFragment;->framesSelectionController$9HHMUR9FC5N68SJFD5I2UOR1DLIN4O9FC9QN4SRK5TIM8QBKDTP2UPRID5I2UKR5DHIM6T39DTN46RREEHP6UR3CCLP3M___:Lcom/android/camera/module/video2/VideoModeModule;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/camera/burst/editor/BurstEditorFragment;)V
    .locals 0

    .prologue
    .line 57
    invoke-direct {p0}, Lcom/android/camera/burst/editor/BurstEditorFragment;->deselectAll()V

    return-void
.end method

.method static synthetic access$400(Lcom/android/camera/burst/editor/BurstEditorFragment;)Lcom/android/camera/burst/editor/fullscreen/GridZoomManager;
    .locals 1

    .prologue
    .line 57
    iget-object v0, p0, Lcom/android/camera/burst/editor/BurstEditorFragment;->gridZoomManager:Lcom/android/camera/burst/editor/fullscreen/GridZoomManager;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/camera/burst/editor/BurstEditorFragment;)Lcom/android/camera/burst/postprocessing/SingleCreationsGenerator;
    .locals 1

    .prologue
    .line 57
    iget-object v0, p0, Lcom/android/camera/burst/editor/BurstEditorFragment;->creationsGenerator:Lcom/android/camera/burst/postprocessing/SingleCreationsGenerator;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/camera/burst/editor/BurstEditorFragment;)Z
    .locals 1

    .prologue
    .line 57
    iget-boolean v0, p0, Lcom/android/camera/burst/editor/BurstEditorFragment;->isSecureCamera:Z

    return v0
.end method

.method static synthetic access$700(Lcom/android/camera/burst/editor/BurstEditorFragment;)V
    .locals 0

    .prologue
    .line 57
    invoke-direct {p0}, Lcom/android/camera/burst/editor/BurstEditorFragment;->adjustVisibleSelectionStatesFromController()V

    return-void
.end method

.method static synthetic access$800(Lcom/android/camera/burst/editor/BurstEditorFragment;)Lcom/android/camera/data/BurstFrameItem;
    .locals 1

    .prologue
    .line 57
    iget-object v0, p0, Lcom/android/camera/burst/editor/BurstEditorFragment;->bestShot:Lcom/android/camera/data/BurstFrameItem;

    return-object v0
.end method

.method static synthetic access$900(Lcom/android/camera/burst/editor/BurstEditorFragment;)Lcom/android/camera/burst/editor/AddCreationFabMenu;
    .locals 1

    .prologue
    .line 57
    iget-object v0, p0, Lcom/android/camera/burst/editor/BurstEditorFragment;->addCreationFabMenu:Lcom/android/camera/burst/editor/AddCreationFabMenu;

    return-object v0
.end method

.method private final adjustVisibleSelectionStatesFromController()V
    .locals 2

    .prologue
    .line 354
    iget-object v0, p0, Lcom/android/camera/burst/editor/BurstEditorFragment;->grid:Lcom/android/camera/burst/editor/grid/BurstGrid;

    invoke-virtual {v0}, Lcom/android/camera/burst/editor/grid/BurstGrid;->adjustVisibleSelectionStatesFromController()V

    .line 355
    iget-object v0, p0, Lcom/android/camera/burst/editor/BurstEditorFragment;->toolbar:Lcom/android/camera/burst/editor/EditorToolbar;

    iget-object v1, p0, Lcom/android/camera/burst/editor/BurstEditorFragment;->framesSelectionController$9HHMUR9FC5N68SJFD5I2UOR1DLIN4O9FC9QN4SRK5TIM8QBKDTP2UPRID5I2UKR5DHIM6T39DTN46RREEHP6UR3CCLP3M___:Lcom/android/camera/module/video2/VideoModeModule;

    invoke-virtual {v1}, Lcom/android/camera/module/video2/VideoModeModule;->getSelected()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/camera/burst/editor/EditorToolbar;->updateToolbarAppearance(I)V

    .line 356
    return-void
.end method

.method private static createBaseShareIntent(Ljava/lang/String;)Landroid/content/Intent;
    .locals 2

    .prologue
    .line 374
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0, p0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 375
    const-string v1, "image/*"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 376
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 377
    const/high16 v1, 0x80000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 378
    return-object v0
.end method

.method private final deselectAll()V
    .locals 1

    .prologue
    .line 388
    iget-object v0, p0, Lcom/android/camera/burst/editor/BurstEditorFragment;->framesSelectionController$9HHMUR9FC5N68SJFD5I2UOR1DLIN4O9FC9QN4SRK5TIM8QBKDTP2UPRID5I2UKR5DHIM6T39DTN46RREEHP6UR3CCLP3M___:Lcom/android/camera/module/video2/VideoModeModule;

    invoke-virtual {v0}, Lcom/android/camera/module/video2/VideoModeModule;->removeAll()Ljava/util/List;

    .line 389
    invoke-direct {p0}, Lcom/android/camera/burst/editor/BurstEditorFragment;->adjustVisibleSelectionStatesFromController()V

    .line 390
    return-void
.end method

.method private final dismissAndRemoveBurstItemFromFilmstrip()V
    .locals 2

    .prologue
    .line 420
    iget-object v0, p0, Lcom/android/camera/burst/editor/BurstEditorFragment;->framesSelectionController$9HHMUR9FC5N68SJFD5I2UOR1DLIN4O9FC9QN4SRK5TIM8QBKDTP2UPRID5I2UKR5DHIM6T39DTN46RREEHP6UR3CCLP3M___:Lcom/android/camera/module/video2/VideoModeModule;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/camera/module/video2/VideoModeModule;->setOnSelectionChangeListener(Lcom/android/camera/burst/editor/grid/SelectionController$OnSelectionChangeListener;)V

    .line 421
    iget-object v0, p0, Lcom/android/camera/burst/editor/BurstEditorFragment;->filmstripController:Lcom/android/camera/filmstrip/FilmstripController;

    iget-object v1, p0, Lcom/android/camera/burst/editor/BurstEditorFragment;->burstItem:Lcom/android/camera/data/BurstItem;

    invoke-virtual {v0, v1}, Lcom/android/camera/filmstrip/FilmstripController;->removeFilmstripItem(Lcom/android/camera/data/FilmstripItem;)V

    .line 422
    invoke-virtual {p0}, Lcom/android/camera/burst/editor/BurstEditorFragment;->dismiss()V

    .line 423
    return-void
.end method

.method private final getItem(Landroid/net/Uri;)Lcom/android/camera/data/BurstFrameItem;
    .locals 3

    .prologue
    .line 178
    iget-object v0, p0, Lcom/android/camera/burst/editor/BurstEditorFragment;->burstItem:Lcom/android/camera/data/BurstItem;

    invoke-virtual {v0}, Lcom/android/camera/data/BurstItem;->getBurstItemData()Lcom/android/camera/data/BurstItemData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/data/BurstItemData;->getBurstList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/data/BurstFrameItem;

    .line 179
    invoke-virtual {v0}, Lcom/android/camera/data/BurstFrameItem;->getData()Lcom/android/camera/data/FilmstripItemData;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/camera/data/FilmstripItemData;->getUri()Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 183
    :goto_0
    return-object v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static newInitializedInstance(Lcom/android/camera/filmstrip/FilmstripController;Z)Lcom/android/camera/burst/editor/BurstEditorFragment;
    .locals 2

    .prologue
    .line 96
    new-instance v0, Lcom/android/camera/burst/editor/BurstEditorFragment;

    invoke-direct {v0}, Lcom/android/camera/burst/editor/BurstEditorFragment;-><init>()V

    .line 1103
    invoke-static {}, Lcom/google/android/apps/camera/async/MainThread;->checkMainThread()V

    .line 1104
    iput-object p0, v0, Lcom/android/camera/burst/editor/BurstEditorFragment;->filmstripController:Lcom/android/camera/filmstrip/FilmstripController;

    .line 1105
    iput-boolean p1, v0, Lcom/android/camera/burst/editor/BurstEditorFragment;->isSecureCamera:Z

    .line 1106
    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/android/camera/burst/editor/BurstEditorFragment;->initialized:Z

    .line 98
    return-object v0
.end method

.method private final removeAndDeleteItems(Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/net/Uri;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 192
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 194
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/Uri;

    .line 195
    invoke-direct {p0, v0}, Lcom/android/camera/burst/editor/BurstEditorFragment;->getItem(Landroid/net/Uri;)Lcom/android/camera/data/BurstFrameItem;

    move-result-object v0

    .line 196
    if-eqz v0, :cond_0

    .line 200
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 202
    iget-object v3, p0, Lcom/android/camera/burst/editor/BurstEditorFragment;->burstItem:Lcom/android/camera/data/BurstItem;

    invoke-virtual {v3}, Lcom/android/camera/data/BurstItem;->getBurstItemData()Lcom/android/camera/data/BurstItemData;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/camera/data/BurstItemData;->getBurstList()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v0}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v3

    .line 203
    if-ltz v3, :cond_0

    .line 204
    iget-object v3, p0, Lcom/android/camera/burst/editor/BurstEditorFragment;->burstItem:Lcom/android/camera/data/BurstItem;

    invoke-virtual {v3}, Lcom/android/camera/data/BurstItem;->getBurstItemData()Lcom/android/camera/data/BurstItemData;

    move-result-object v3

    invoke-virtual {v3, v0}, Lcom/android/camera/data/BurstItemData;->removeItem(Lcom/android/camera/data/BurstFrameItem;)Z

    goto :goto_0

    .line 208
    :cond_1
    iget-object v0, p0, Lcom/android/camera/burst/editor/BurstEditorFragment;->burstItem:Lcom/android/camera/data/BurstItem;

    invoke-virtual {v0}, Lcom/android/camera/data/BurstItem;->getBestShot()Lcom/android/camera/data/BurstFrameItem;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/burst/editor/BurstEditorFragment;->bestShot:Lcom/android/camera/data/BurstFrameItem;

    .line 209
    iget-object v0, p0, Lcom/android/camera/burst/editor/BurstEditorFragment;->grid:Lcom/android/camera/burst/editor/grid/BurstGrid;

    invoke-virtual {v0}, Lcom/android/camera/burst/editor/grid/BurstGrid;->notifyDatasetChanged()V

    .line 210
    iget-object v0, p0, Lcom/android/camera/burst/editor/BurstEditorFragment;->gridZoomManager:Lcom/android/camera/burst/editor/fullscreen/GridZoomManager;

    invoke-virtual {v0, p1}, Lcom/android/camera/burst/editor/fullscreen/GridZoomManager;->notifyFramesDeleted(Ljava/util/List;)V

    .line 212
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    .line 214
    new-instance v2, Lcom/android/camera/burst/editor/BurstEditorFragment$4;

    invoke-direct {v2, v1}, Lcom/android/camera/burst/editor/BurstEditorFragment$4;-><init>(Ljava/util/List;)V

    invoke-static {v0, v2}, Lcom/google/android/libraries/smartburst/concurrency/Results;->create(Ljava/util/concurrent/Executor;Ljava/util/concurrent/Callable;)Lcom/google/android/libraries/smartburst/concurrency/Result;

    move-result-object v1

    new-instance v2, Lcom/google/android/apps/camera/async/MainThread;

    invoke-direct {v2}, Lcom/google/android/apps/camera/async/MainThread;-><init>()V

    new-instance v3, Lcom/android/camera/burst/editor/BurstEditorFragment$3;

    invoke-direct {v3, p0, v0}, Lcom/android/camera/burst/editor/BurstEditorFragment$3;-><init>(Lcom/android/camera/burst/editor/BurstEditorFragment;Ljava/util/concurrent/ExecutorService;)V

    .line 222
    invoke-virtual {v1, v2, v3}, Lcom/google/android/libraries/smartburst/concurrency/Result;->then(Ljava/util/concurrent/Executor;Lcom/google/android/libraries/smartburst/utils/Function;)Lcom/google/android/libraries/smartburst/concurrency/Result;

    move-result-object v0

    new-instance v1, Lcom/google/android/apps/camera/async/MainThread;

    invoke-direct {v1}, Lcom/google/android/apps/camera/async/MainThread;-><init>()V

    new-instance v2, Lcom/android/camera/burst/editor/BurstEditorFragment$2;

    invoke-direct {v2}, Lcom/android/camera/burst/editor/BurstEditorFragment$2;-><init>()V

    .line 228
    invoke-virtual {v0, v1, v2}, Lcom/google/android/libraries/smartburst/concurrency/Result;->thenCatch(Ljava/util/concurrent/Executor;Lcom/google/android/libraries/smartburst/utils/Function;)Lcom/google/android/libraries/smartburst/concurrency/Result;

    .line 234
    return-void
.end method


# virtual methods
.method public final loadBurstData(Lcom/android/camera/data/BurstItem;Lcom/android/camera/burst/postprocessing/SingleCreationsGenerator;)V
    .locals 2

    .prologue
    .line 110
    invoke-static {}, Lcom/google/android/apps/camera/async/MainThread;->checkMainThread()V

    .line 111
    iput-object p1, p0, Lcom/android/camera/burst/editor/BurstEditorFragment;->burstItem:Lcom/android/camera/data/BurstItem;

    .line 112
    iput-object p2, p0, Lcom/android/camera/burst/editor/BurstEditorFragment;->creationsGenerator:Lcom/android/camera/burst/postprocessing/SingleCreationsGenerator;

    .line 113
    new-instance v0, Lcom/android/camera/stats/BurstEditorLogger;

    invoke-virtual {p1}, Lcom/android/camera/data/BurstItem;->getData()Lcom/android/camera/data/FilmstripItemData;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/data/FilmstripItemData;->getFilePath()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/camera/stats/BurstEditorLogger;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/camera/burst/editor/BurstEditorFragment;->statsLogger:Lcom/android/camera/stats/BurstEditorLogger;

    .line 114
    new-instance v0, Lcom/android/camera/burst/editor/fullscreen/GridZoomManager;

    iget-object v1, p0, Lcom/android/camera/burst/editor/BurstEditorFragment;->zoomListener:Lcom/android/camera/burst/editor/fullscreen/GridZoomManager$GridZoomEventListener;

    invoke-direct {v0, v1}, Lcom/android/camera/burst/editor/fullscreen/GridZoomManager;-><init>(Lcom/android/camera/burst/editor/fullscreen/GridZoomManager$GridZoomEventListener;)V

    iput-object v0, p0, Lcom/android/camera/burst/editor/BurstEditorFragment;->gridZoomManager:Lcom/android/camera/burst/editor/fullscreen/GridZoomManager;

    .line 117
    invoke-virtual {p1}, Lcom/android/camera/data/BurstItem;->getBestShot()Lcom/android/camera/data/BurstFrameItem;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/burst/editor/BurstEditorFragment;->bestShot:Lcom/android/camera/data/BurstFrameItem;

    .line 118
    iget-object v0, p0, Lcom/android/camera/burst/editor/BurstEditorFragment;->gridZoomManager:Lcom/android/camera/burst/editor/fullscreen/GridZoomManager;

    iget-boolean v1, p0, Lcom/android/camera/burst/editor/BurstEditorFragment;->isSecureCamera:Z

    invoke-virtual {v0, v1}, Lcom/android/camera/burst/editor/fullscreen/GridZoomManager;->setSecureCamera(Z)V

    .line 119
    return-void
.end method

.method public final onActivityCreated(Landroid/os/Bundle;)V
    .locals 0

    .prologue
    .line 148
    invoke-super {p0, p1}, Landroid/app/DialogFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 149
    return-void
.end method

.method public final onActivityResult(IILandroid/content/Intent;)V
    .locals 4

    .prologue
    .line 394
    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 395
    monitor-enter p0

    .line 396
    :try_start_0
    iget-object v0, p0, Lcom/android/camera/burst/editor/BurstEditorFragment;->stackImageEditRequest:Lcom/android/camera/burst/editor/StackImageEditRequest;

    if-eqz v0, :cond_1

    .line 403
    iget-object v0, p0, Lcom/android/camera/burst/editor/BurstEditorFragment;->stackImageEditRequest:Lcom/android/camera/burst/editor/StackImageEditRequest;

    invoke-virtual {v0}, Lcom/android/camera/burst/editor/StackImageEditRequest;->getBurstFrameItem()Lcom/android/camera/data/BurstFrameItem;

    move-result-object v0

    .line 404
    invoke-virtual {v0}, Lcom/android/camera/data/BurstFrameItem;->getData()Lcom/android/camera/data/FilmstripItemData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/data/FilmstripItemData;->getLastModifiedDate()Ljava/util/Date;

    move-result-object v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/util/Date;->setTime(J)V

    .line 405
    iget-object v0, p0, Lcom/android/camera/burst/editor/BurstEditorFragment;->grid:Lcom/android/camera/burst/editor/grid/BurstGrid;

    iget-object v1, p0, Lcom/android/camera/burst/editor/BurstEditorFragment;->stackImageEditRequest:Lcom/android/camera/burst/editor/StackImageEditRequest;

    invoke-virtual {v1}, Lcom/android/camera/burst/editor/StackImageEditRequest;->getBurstFrameItem()Lcom/android/camera/data/BurstFrameItem;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/camera/burst/editor/grid/BurstGrid;->updateGridImageForItem(Lcom/android/camera/data/BurstFrameItem;)V

    .line 406
    iget-object v0, p0, Lcom/android/camera/burst/editor/BurstEditorFragment;->stackImageEditRequest:Lcom/android/camera/burst/editor/StackImageEditRequest;

    invoke-virtual {v0}, Lcom/android/camera/burst/editor/StackImageEditRequest;->getBurstFrameItem()Lcom/android/camera/data/BurstFrameItem;

    move-result-object v0

    .line 1416
    iget-object v1, p0, Lcom/android/camera/burst/editor/BurstEditorFragment;->gridZoomManager:Lcom/android/camera/burst/editor/fullscreen/GridZoomManager;

    invoke-virtual {v1, v0}, Lcom/android/camera/burst/editor/fullscreen/GridZoomManager;->updateFrame(Lcom/android/camera/data/BurstFrameItem;)V

    .line 407
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/camera/burst/editor/BurstEditorFragment;->stackImageEditRequest:Lcom/android/camera/burst/editor/StackImageEditRequest;

    .line 411
    :goto_0
    monitor-exit p0

    .line 413
    :cond_0
    return-void

    .line 409
    :cond_1
    sget-object v0, Lcom/android/camera/burst/editor/BurstEditorFragment;->TAG:Ljava/lang/String;

    const-string v1, "No stack image edit request after edit intent returns."

    invoke-static {v0, v1}, Lcom/android/camera/debug/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 411
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public final onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1

    .prologue
    .line 383
    invoke-super {p0, p1}, Landroid/app/DialogFragment;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 384
    iget-object v0, p0, Lcom/android/camera/burst/editor/BurstEditorFragment;->grid:Lcom/android/camera/burst/editor/grid/BurstGrid;

    invoke-virtual {v0, p1}, Lcom/android/camera/burst/editor/grid/BurstGrid;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 385
    return-void
.end method

.method public final onCreate(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 153
    invoke-super {p0, p1}, Landroid/app/DialogFragment;->onCreate(Landroid/os/Bundle;)V

    .line 154
    const/4 v0, 0x0

    const v1, 0x7f0e01ac

    invoke-virtual {p0, v0, v1}, Lcom/android/camera/burst/editor/BurstEditorFragment;->setStyle(II)V

    .line 155
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/camera/burst/editor/BurstEditorFragment;->setHasOptionsMenu(Z)V

    .line 156
    return-void
.end method

.method public final onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 3

    .prologue
    .line 132
    new-instance v0, Lcom/android/camera/burst/editor/BurstEditorFragment$1;

    invoke-virtual {p0}, Lcom/android/camera/burst/editor/BurstEditorFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/camera/burst/editor/BurstEditorFragment;->getTheme()I

    move-result v2

    invoke-direct {v0, p0, v1, v2}, Lcom/android/camera/burst/editor/BurstEditorFragment$1;-><init>(Lcom/android/camera/burst/editor/BurstEditorFragment;Landroid/content/Context;I)V

    return-object v0
.end method

.method public final onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 0

    .prologue
    .line 161
    invoke-super {p0, p1, p2}, Landroid/app/DialogFragment;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V

    .line 162
    return-void
.end method

.method public final onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 167
    invoke-virtual {p0}, Lcom/android/camera/burst/editor/BurstEditorFragment;->getDialog()Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    .line 168
    invoke-virtual {v0, v2}, Landroid/view/Window;->requestFeature(I)Z

    .line 169
    iget-boolean v1, p0, Lcom/android/camera/burst/editor/BurstEditorFragment;->initialized:Z

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lcom/android/camera/burst/editor/BurstEditorFragment;->isSecureCamera:Z

    if-eqz v1, :cond_0

    .line 170
    const/16 v1, 0x2000

    invoke-virtual {v0, v1}, Landroid/view/Window;->addFlags(I)V

    .line 171
    const/high16 v1, 0x80000

    invoke-virtual {v0, v1}, Landroid/view/Window;->addFlags(I)V

    .line 173
    :cond_0
    const v0, 0x7f040021

    invoke-virtual {p1, v0, p2, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public final onFilmstripItemInserted(ILcom/android/camera/data/FilmstripItem;)V
    .locals 0

    .prologue
    .line 438
    return-void
.end method

.method public final onFilmstripItemRemoved(ILcom/android/camera/data/FilmstripItem;)V
    .locals 1

    .prologue
    .line 442
    iget-object v0, p0, Lcom/android/camera/burst/editor/BurstEditorFragment;->burstItem:Lcom/android/camera/data/BurstItem;

    if-ne p2, v0, :cond_0

    .line 443
    invoke-virtual {p0}, Lcom/android/camera/burst/editor/BurstEditorFragment;->dismiss()V

    .line 445
    :cond_0
    return-void
.end method

.method public final onFilmstripItemUpdated(Lcom/android/camera/filmstrip/FilmstripDataAdapter$UpdateReporter;)V
    .locals 1

    .prologue
    .line 432
    iget-object v0, p0, Lcom/android/camera/burst/editor/BurstEditorFragment;->grid:Lcom/android/camera/burst/editor/grid/BurstGrid;

    invoke-virtual {v0}, Lcom/android/camera/burst/editor/grid/BurstGrid;->notifyDatasetChanged()V

    .line 433
    return-void
.end method

.method public final onFilmstripItemsLoaded()V
    .locals 0

    .prologue
    .line 428
    return-void
.end method

.method public final onToolbarBack()V
    .locals 1

    .prologue
    .line 318
    iget-object v0, p0, Lcom/android/camera/burst/editor/BurstEditorFragment;->gridZoomManager:Lcom/android/camera/burst/editor/fullscreen/GridZoomManager;

    invoke-virtual {v0}, Lcom/android/camera/burst/editor/fullscreen/GridZoomManager;->isZoomed()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 319
    iget-object v0, p0, Lcom/android/camera/burst/editor/BurstEditorFragment;->gridZoomManager:Lcom/android/camera/burst/editor/fullscreen/GridZoomManager;

    invoke-virtual {v0}, Lcom/android/camera/burst/editor/fullscreen/GridZoomManager;->zoomOut()V

    .line 323
    :goto_0
    return-void

    .line 321
    :cond_0
    invoke-virtual {p0}, Lcom/android/camera/burst/editor/BurstEditorFragment;->dismiss()V

    goto :goto_0
.end method

.method public final onToolbarDeleteClicked()V
    .locals 3

    .prologue
    .line 327
    iget-object v0, p0, Lcom/android/camera/burst/editor/BurstEditorFragment;->framesSelectionController$9HHMUR9FC5N68SJFD5I2UOR1DLIN4O9FC9QN4SRK5TIM8QBKDTP2UPRID5I2UKR5DHIM6T39DTN46RREEHP6UR3CCLP3M___:Lcom/android/camera/module/video2/VideoModeModule;

    invoke-virtual {v0}, Lcom/android/camera/module/video2/VideoModeModule;->getSelected()Ljava/util/List;

    move-result-object v0

    .line 329
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    iget-object v2, p0, Lcom/android/camera/burst/editor/BurstEditorFragment;->burstItem:Lcom/android/camera/data/BurstItem;

    invoke-virtual {v2}, Lcom/android/camera/data/BurstItem;->getBurstSize()I

    move-result v2

    if-ne v1, v2, :cond_1

    .line 330
    invoke-direct {p0}, Lcom/android/camera/burst/editor/BurstEditorFragment;->dismissAndRemoveBurstItemFromFilmstrip()V

    .line 341
    :cond_0
    :goto_0
    return-void

    .line 331
    :cond_1
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_0

    .line 332
    invoke-direct {p0, v0}, Lcom/android/camera/burst/editor/BurstEditorFragment;->removeAndDeleteItems(Ljava/util/List;)V

    .line 333
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 336
    iget-object v1, p0, Lcom/android/camera/burst/editor/BurstEditorFragment;->statsLogger:Lcom/android/camera/stats/BurstEditorLogger;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/android/camera/stats/BurstEditorLogger;->logStackFrameDeletion(I)V

    goto :goto_1

    .line 339
    :cond_2
    invoke-direct {p0}, Lcom/android/camera/burst/editor/BurstEditorFragment;->deselectAll()V

    goto :goto_0
.end method

.method public final onToolbarDeselect()V
    .locals 0

    .prologue
    .line 313
    invoke-direct {p0}, Lcom/android/camera/burst/editor/BurstEditorFragment;->deselectAll()V

    .line 314
    return-void
.end method

.method public final onToolbarShareClicked()V
    .locals 4

    .prologue
    const/4 v2, 0x1

    .line 345
    iget-object v0, p0, Lcom/android/camera/burst/editor/BurstEditorFragment;->framesSelectionController$9HHMUR9FC5N68SJFD5I2UOR1DLIN4O9FC9QN4SRK5TIM8QBKDTP2UPRID5I2UKR5DHIM6T39DTN46RREEHP6UR3CCLP3M___:Lcom/android/camera/module/video2/VideoModeModule;

    invoke-virtual {v0}, Lcom/android/camera/module/video2/VideoModeModule;->getSelected()Ljava/util/List;

    move-result-object v0

    .line 347
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_1

    .line 1359
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-ne v1, v2, :cond_2

    .line 1360
    const-string v1, "android.intent.action.SEND"

    invoke-static {v1}, Lcom/android/camera/burst/editor/BurstEditorFragment;->createBaseShareIntent(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    .line 1361
    const/4 v2, 0x0

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/Uri;

    .line 1362
    const-string v2, "android.intent.extra.STREAM"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 1363
    invoke-virtual {p0, v1}, Lcom/android/camera/burst/editor/BurstEditorFragment;->startActivity(Landroid/content/Intent;)V

    .line 349
    :cond_0
    :goto_0
    invoke-direct {p0}, Lcom/android/camera/burst/editor/BurstEditorFragment;->deselectAll()V

    .line 351
    :cond_1
    return-void

    .line 1364
    :cond_2
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-le v1, v2, :cond_0

    .line 1365
    const-string v1, "android.intent.action.SEND_MULTIPLE"

    invoke-static {v1}, Lcom/android/camera/burst/editor/BurstEditorFragment;->createBaseShareIntent(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    .line 1366
    const-string v2, "android.intent.extra.STREAM"

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putParcelableArrayListExtra(Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/Intent;

    .line 1368
    invoke-virtual {p0}, Lcom/android/camera/burst/editor/BurstEditorFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x7f0a01d8

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/content/Intent;->createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;)Landroid/content/Intent;

    move-result-object v0

    .line 1369
    invoke-virtual {p0, v0}, Lcom/android/camera/burst/editor/BurstEditorFragment;->startActivity(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method public final onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 6

    .prologue
    .line 238
    iget-boolean v0, p0, Lcom/android/camera/burst/editor/BurstEditorFragment;->initialized:Z

    if-nez v0, :cond_0

    .line 241
    new-instance v0, Lcom/android/camera/burst/editor/BurstEditorFragment$5;

    invoke-direct {v0, p0}, Lcom/android/camera/burst/editor/BurstEditorFragment$5;-><init>(Lcom/android/camera/burst/editor/BurstEditorFragment;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 309
    :goto_0
    return-void

    .line 250
    :cond_0
    new-instance v0, Lcom/android/camera/burst/editor/AddCreationFabMenu$Adapter;

    invoke-direct {v0, p0}, Lcom/android/camera/burst/editor/AddCreationFabMenu$Adapter;-><init>(Lcom/android/camera/burst/editor/BurstEditorFragment;)V

    .line 262
    new-instance v1, Lcom/android/camera/burst/editor/AddCreationFabMenu;

    invoke-direct {v1, v0}, Lcom/android/camera/burst/editor/AddCreationFabMenu;-><init>(Lcom/android/camera/burst/editor/AddCreationFabMenu$Adapter;)V

    iput-object v1, p0, Lcom/android/camera/burst/editor/BurstEditorFragment;->addCreationFabMenu:Lcom/android/camera/burst/editor/AddCreationFabMenu;

    .line 263
    iget-object v0, p0, Lcom/android/camera/burst/editor/BurstEditorFragment;->addCreationFabMenu:Lcom/android/camera/burst/editor/AddCreationFabMenu;

    invoke-virtual {v0, p1}, Lcom/android/camera/burst/editor/AddCreationFabMenu;->onBurstEditorCreated(Landroid/view/View;)V

    .line 265
    iget-object v0, p0, Lcom/android/camera/burst/editor/BurstEditorFragment;->addCreationFabMenu:Lcom/android/camera/burst/editor/AddCreationFabMenu;

    new-instance v1, Lcom/android/camera/burst/editor/BurstEditorFragment$7;

    invoke-direct {v1, p0}, Lcom/android/camera/burst/editor/BurstEditorFragment$7;-><init>(Lcom/android/camera/burst/editor/BurstEditorFragment;)V

    invoke-virtual {v0, v1}, Lcom/android/camera/burst/editor/AddCreationFabMenu;->setListener(Lcom/android/camera/burst/editor/AddCreationFabMenu$AddCreationListener;)V

    .line 275
    invoke-virtual {p0}, Lcom/android/camera/burst/editor/BurstEditorFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    new-instance v1, Lcom/android/camera/burst/editor/BurstEditorFragment$8;

    invoke-direct {v1, p0}, Lcom/android/camera/burst/editor/BurstEditorFragment$8;-><init>(Lcom/android/camera/burst/editor/BurstEditorFragment;)V

    .line 280
    invoke-virtual {p0}, Lcom/android/camera/burst/editor/BurstEditorFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    .line 275
    invoke-static {p0, v0, v1, p1, v2}, Lcom/android/camera/burst/editor/EditorToolbar;->newInitializedInstance(Lcom/android/camera/burst/editor/EditorToolbar$Listener;Landroid/content/res/Resources;Lcom/google/common/base/Supplier;Landroid/view/View;Landroid/content/Context;)Lcom/android/camera/burst/editor/EditorToolbar;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/burst/editor/BurstEditorFragment;->toolbar:Lcom/android/camera/burst/editor/EditorToolbar;

    .line 282
    iget-object v0, p0, Lcom/android/camera/burst/editor/BurstEditorFragment;->framesSelectionController$9HHMUR9FC5N68SJFD5I2UOR1DLIN4O9FC9QN4SRK5TIM8QBKDTP2UPRID5I2UKR5DHIM6T39DTN46RREEHP6UR3CCLP3M___:Lcom/android/camera/module/video2/VideoModeModule;

    new-instance v1, Lcom/android/camera/burst/editor/BurstEditorFragment$9;

    invoke-direct {v1, p0}, Lcom/android/camera/burst/editor/BurstEditorFragment$9;-><init>(Lcom/android/camera/burst/editor/BurstEditorFragment;)V

    invoke-virtual {v0, v1}, Lcom/android/camera/module/video2/VideoModeModule;->setOnSelectionChangeListener(Lcom/android/camera/burst/editor/grid/SelectionController$OnSelectionChangeListener;)V

    .line 290
    new-instance v3, Lcom/android/camera/burst/editor/BurstEditorFragment$10;

    invoke-direct {v3, p0}, Lcom/android/camera/burst/editor/BurstEditorFragment$10;-><init>(Lcom/android/camera/burst/editor/BurstEditorFragment;)V

    .line 297
    new-instance v0, Lcom/android/camera/burst/editor/BurstGridSections;

    iget-object v1, p0, Lcom/android/camera/burst/editor/BurstEditorFragment;->burstItem:Lcom/android/camera/data/BurstItem;

    invoke-direct {v0, v1}, Lcom/android/camera/burst/editor/BurstGridSections;-><init>(Lcom/android/camera/data/BurstItem;)V

    iput-object v0, p0, Lcom/android/camera/burst/editor/BurstEditorFragment;->sections:Lcom/android/camera/burst/editor/BurstGridSections;

    .line 298
    iget-object v0, p0, Lcom/android/camera/burst/editor/BurstEditorFragment;->grid:Lcom/android/camera/burst/editor/grid/BurstGrid;

    .line 299
    invoke-virtual {p0}, Lcom/android/camera/burst/editor/BurstEditorFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    iget-object v4, p0, Lcom/android/camera/burst/editor/BurstEditorFragment;->framesSelectionController$9HHMUR9FC5N68SJFD5I2UOR1DLIN4O9FC9QN4SRK5TIM8QBKDTP2UPRID5I2UKR5DHIM6T39DTN46RREEHP6UR3CCLP3M___:Lcom/android/camera/module/video2/VideoModeModule;

    iget-object v5, p0, Lcom/android/camera/burst/editor/BurstEditorFragment;->sections:Lcom/android/camera/burst/editor/BurstGridSections;

    move-object v2, p1

    .line 298
    invoke-virtual/range {v0 .. v5}, Lcom/android/camera/burst/editor/grid/BurstGrid;->onBurstEditorCreated$51662RJ4E9NMIP1FCDNMST35DPQ2UGRFDPQ6AU3K7D662RJ4E9NMIP1FEPKMATPFAPKMATPR9HHMUR9FCTNMUPRCCKNM6RRDDLNMSBR2C5PMABQJELO70R39CLP3MJ33DTMIUOBECHP6UQB45THM2RB5E9GIUOJLE9PN8BR5CHKN8RRI5TJN4QB45T9MAR35CDQ6IRRE8DNMST3IDTM6OPBI7D666RRD5TGMSP3IDTKM8BR3C5MMASJ15TH7ASJJEGNMAP39EHNN4BQ2ELP76T27E9KM8KR5CDQ6IRREECTIILG_(Landroid/content/Context;Landroid/view/View;Lcom/google/common/base/Supplier;Lcom/android/camera/module/video2/VideoModeModule;Lcom/android/camera/burst/editor/BurstGridSections;)V

    .line 306
    const v0, 0x7f11009c

    .line 307
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/RecyclerView;

    .line 308
    iget-object v1, p0, Lcom/android/camera/burst/editor/BurstEditorFragment;->gridZoomManager:Lcom/android/camera/burst/editor/fullscreen/GridZoomManager;

    check-cast p1, Landroid/view/ViewGroup;

    invoke-virtual {p0}, Lcom/android/camera/burst/editor/BurstEditorFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v1, p1, v0, v2}, Lcom/android/camera/burst/editor/fullscreen/GridZoomManager;->setup(Landroid/view/ViewGroup;Landroid/support/v7/widget/RecyclerView;Landroid/content/Context;)V

    goto :goto_0
.end method
