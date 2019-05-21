.class public final Lcom/android/camera/burst/editor/grid/BurstGrid;
.super Ljava/lang/Object;
.source "BurstGrid.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/camera/burst/editor/grid/BurstGrid$GridSpanSizeLookup;,
        Lcom/android/camera/burst/editor/grid/BurstGrid$Listener;
    }
.end annotation


# instance fields
.field private context:Landroid/content/Context;

.field private framesGridView:Landroid/support/v7/widget/RecyclerView;

.field private framesRecyclerViewAdapter:Lcom/android/camera/burst/editor/grid/GridFramesImageViewAdapter;

.field private itemDecoration$9HGMSP3IDTKM8BRJELO70RRIEGNNCDPFETKM8PR5EGNL4PB3F5HMOPBIAPKMATP495Q6ARA4CLHMUSJ1EHKMURHR:Lcom/android/camera/activity/config/ModeStartupModules;

.field private final listener:Lcom/android/camera/burst/editor/grid/BurstGrid$Listener;


# direct methods
.method public constructor <init>(Lcom/android/camera/burst/editor/grid/BurstGrid$Listener;)V
    .locals 0

    .prologue
    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    iput-object p1, p0, Lcom/android/camera/burst/editor/grid/BurstGrid;->listener:Lcom/android/camera/burst/editor/grid/BurstGrid$Listener;

    .line 55
    return-void
.end method

.method static synthetic access$000(Lcom/android/camera/burst/editor/grid/BurstGrid;)Lcom/android/camera/burst/editor/grid/GridFramesImageViewAdapter;
    .locals 1

    .prologue
    .line 21
    iget-object v0, p0, Lcom/android/camera/burst/editor/grid/BurstGrid;->framesRecyclerViewAdapter:Lcom/android/camera/burst/editor/grid/GridFramesImageViewAdapter;

    return-object v0
.end method

.method private static getGridWidth(Landroid/content/res/Configuration;)I
    .locals 2

    .prologue
    .line 198
    iget v0, p0, Landroid/content/res/Configuration;->orientation:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 199
    const/4 v0, 0x4

    .line 201
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x6

    goto :goto_0
.end method

.method private final updateItemDecoration(I)V
    .locals 3

    .prologue
    .line 171
    iget-object v0, p0, Lcom/android/camera/burst/editor/grid/BurstGrid;->itemDecoration$9HGMSP3IDTKM8BRJELO70RRIEGNNCDPFETKM8PR5EGNL4PB3F5HMOPBIAPKMATP495Q6ARA4CLHMUSJ1EHKMURHR:Lcom/android/camera/activity/config/ModeStartupModules;

    if-eqz v0, :cond_0

    .line 172
    iget-object v0, p0, Lcom/android/camera/burst/editor/grid/BurstGrid;->framesGridView:Landroid/support/v7/widget/RecyclerView;

    iget-object v1, p0, Lcom/android/camera/burst/editor/grid/BurstGrid;->itemDecoration$9HGMSP3IDTKM8BRJELO70RRIEGNNCDPFETKM8PR5EGNL4PB3F5HMOPBIAPKMATP495Q6ARA4CLHMUSJ1EHKMURHR:Lcom/android/camera/activity/config/ModeStartupModules;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->removeItemDecoration$51662RJ4E9NMIP1FEDQN0S3FE9Q2UTHN5TRMIP37CLQ2UKJ5CDSM6R35E9B6IPBN4H4N8PBD8HIM6RRIC5Q6IRRE7CKLC___(Lcom/android/camera/activity/config/ModeStartupModules;)V

    .line 174
    :cond_0
    new-instance v0, Lcom/android/camera/burst/editor/grid/GridMarginDecoration;

    iget-object v1, p0, Lcom/android/camera/burst/editor/grid/BurstGrid;->context:Landroid/content/Context;

    .line 176
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0c01a7

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v1

    new-instance v2, Lcom/android/camera/burst/editor/grid/BurstGrid$GridSpanSizeLookup;

    invoke-direct {v2, p0, p1}, Lcom/android/camera/burst/editor/grid/BurstGrid$GridSpanSizeLookup;-><init>(Lcom/android/camera/burst/editor/grid/BurstGrid;I)V

    invoke-direct {v0, v1, p1, v2}, Lcom/android/camera/burst/editor/grid/GridMarginDecoration;-><init>(IILandroid/support/v7/widget/GridLayoutManager$SpanSizeLookup;)V

    iput-object v0, p0, Lcom/android/camera/burst/editor/grid/BurstGrid;->itemDecoration$9HGMSP3IDTKM8BRJELO70RRIEGNNCDPFETKM8PR5EGNL4PB3F5HMOPBIAPKMATP495Q6ARA4CLHMUSJ1EHKMURHR:Lcom/android/camera/activity/config/ModeStartupModules;

    .line 179
    iget-object v0, p0, Lcom/android/camera/burst/editor/grid/BurstGrid;->framesGridView:Landroid/support/v7/widget/RecyclerView;

    iget-object v1, p0, Lcom/android/camera/burst/editor/grid/BurstGrid;->itemDecoration$9HGMSP3IDTKM8BRJELO70RRIEGNNCDPFETKM8PR5EGNL4PB3F5HMOPBIAPKMATP495Q6ARA4CLHMUSJ1EHKMURHR:Lcom/android/camera/activity/config/ModeStartupModules;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->addItemDecoration$51662RJ4E9NMIP1FEDQN0S3FE9Q2UTHN5TRMIP37CLQ2UKJ5CDSM6R35E9B6IPBN4H4N8PBD8HIM6RRIC5Q6IRRE7CKLC___(Lcom/android/camera/activity/config/ModeStartupModules;)V

    .line 180
    return-void
.end method


# virtual methods
.method public final adjustVisibleSelectionStatesFromController()V
    .locals 3

    .prologue
    .line 119
    const/4 v0, 0x0

    move v1, v0

    .line 120
    :goto_0
    iget-object v0, p0, Lcom/android/camera/burst/editor/grid/BurstGrid;->framesGridView:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView;->getAdapter()Landroid/support/v7/widget/RecyclerView$Adapter;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView$Adapter;->getItemCount()I

    move-result v0

    if-ge v1, v0, :cond_1

    .line 122
    iget-object v0, p0, Lcom/android/camera/burst/editor/grid/BurstGrid;->framesGridView:Landroid/support/v7/widget/RecyclerView;

    .line 123
    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->findViewHolderForAdapterPosition(I)Landroid/support/v7/widget/RecyclerView$ViewHolder;

    move-result-object v0

    check-cast v0, Lcom/android/camera/burst/editor/grid/GridFrameOrHeaderViewHolder;

    .line 126
    if-eqz v0, :cond_0

    .line 129
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lcom/android/camera/burst/editor/grid/GridFrameOrHeaderViewHolder;->adjustSelectionStateFromController(Z)V

    .line 121
    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 131
    :cond_1
    return-void
.end method

.method public final notifyDatasetChanged()V
    .locals 1

    .prologue
    .line 140
    iget-object v0, p0, Lcom/android/camera/burst/editor/grid/BurstGrid;->framesRecyclerViewAdapter:Lcom/android/camera/burst/editor/grid/GridFramesImageViewAdapter;

    invoke-virtual {v0}, Lcom/android/camera/burst/editor/grid/GridFramesImageViewAdapter;->notifyDataSetChanged()V

    .line 141
    return-void
.end method

.method public final onBurstEditorCreated$51662RJ4E9NMIP1FCDNMST35DPQ2UGRFDPQ6AU3K7D662RJ4E9NMIP1FEPKMATPFAPKMATPR9HHMUR9FCTNMUPRCCKNM6RRDDLNMSBR2C5PMABQJELO70R39CLP3MJ33DTMIUOBECHP6UQB45THM2RB5E9GIUOJLE9PN8BR5CHKN8RRI5TJN4QB45T9MAR35CDQ6IRRE8DNMST3IDTM6OPBI7D666RRD5TGMSP3IDTKM8BR3C5MMASJ15TH7ASJJEGNMAP39EHNN4BQ2ELP76T27E9KM8KR5CDQ6IRREECTIILG_(Landroid/content/Context;Landroid/view/View;Lcom/google/common/base/Supplier;Lcom/android/camera/module/video2/VideoModeModule;Lcom/android/camera/burst/editor/BurstGridSections;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroid/view/View;",
            "Lcom/google/common/base/Supplier",
            "<",
            "Lcom/android/camera/data/BurstFrameItem;",
            ">;",
            "Lcom/android/camera/module/video2/VideoModeModule;",
            "Lcom/android/camera/burst/editor/BurstGridSections;",
            ")V"
        }
    .end annotation

    .prologue
    .line 73
    iput-object p1, p0, Lcom/android/camera/burst/editor/grid/BurstGrid;->context:Landroid/content/Context;

    .line 74
    const v0, 0x7f11009c

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/RecyclerView;

    iput-object v0, p0, Lcom/android/camera/burst/editor/grid/BurstGrid;->framesGridView:Landroid/support/v7/widget/RecyclerView;

    .line 78
    iget-object v0, p0, Lcom/android/camera/burst/editor/grid/BurstGrid;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    invoke-static {v0}, Lcom/android/camera/burst/editor/grid/BurstGrid;->getGridWidth(Landroid/content/res/Configuration;)I

    move-result v6

    .line 79
    new-instance v7, Landroid/support/v7/widget/GridLayoutManager;

    iget-object v0, p0, Lcom/android/camera/burst/editor/grid/BurstGrid;->context:Landroid/content/Context;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-direct {v7, v0, v6, v1, v2}, Landroid/support/v7/widget/GridLayoutManager;-><init>(Landroid/content/Context;IIZ)V

    .line 81
    iget-object v0, p0, Lcom/android/camera/burst/editor/grid/BurstGrid;->framesGridView:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0, v7}, Landroid/support/v7/widget/RecyclerView;->setLayoutManager(Landroid/support/v7/widget/RecyclerView$LayoutManager;)V

    .line 83
    new-instance v0, Lcom/android/camera/burst/editor/grid/GridFramesImageViewAdapter;

    iget-object v1, p0, Lcom/android/camera/burst/editor/grid/BurstGrid;->context:Landroid/content/Context;

    .line 87
    invoke-static {v1}, Lcom/bumptech/glide/Glide;->with(Landroid/content/Context;)Lcom/bumptech/glide/RequestManager;

    move-result-object v3

    iget-object v5, p0, Lcom/android/camera/burst/editor/grid/BurstGrid;->listener:Lcom/android/camera/burst/editor/grid/BurstGrid$Listener;

    move-object v1, p4

    move-object v2, p3

    move-object v4, p5

    invoke-direct/range {v0 .. v5}, Lcom/android/camera/burst/editor/grid/GridFramesImageViewAdapter;-><init>(Lcom/android/camera/module/video2/VideoModeModule;Lcom/google/common/base/Supplier;Lcom/bumptech/glide/RequestManager;Lcom/android/camera/burst/editor/BurstGridSections;Lcom/android/camera/burst/editor/grid/BurstGrid$Listener;)V

    iput-object v0, p0, Lcom/android/camera/burst/editor/grid/BurstGrid;->framesRecyclerViewAdapter:Lcom/android/camera/burst/editor/grid/GridFramesImageViewAdapter;

    .line 90
    iget-object v0, p0, Lcom/android/camera/burst/editor/grid/BurstGrid;->framesGridView:Landroid/support/v7/widget/RecyclerView;

    iget-object v1, p0, Lcom/android/camera/burst/editor/grid/BurstGrid;->framesRecyclerViewAdapter:Lcom/android/camera/burst/editor/grid/GridFramesImageViewAdapter;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->setAdapter(Landroid/support/v7/widget/RecyclerView$Adapter;)V

    .line 93
    new-instance v0, Lcom/android/camera/burst/editor/grid/BurstGrid$GridSpanSizeLookup;

    invoke-direct {v0, p0, v6}, Lcom/android/camera/burst/editor/grid/BurstGrid$GridSpanSizeLookup;-><init>(Lcom/android/camera/burst/editor/grid/BurstGrid;I)V

    invoke-virtual {v7, v0}, Landroid/support/v7/widget/GridLayoutManager;->setSpanSizeLookup(Landroid/support/v7/widget/GridLayoutManager$SpanSizeLookup;)V

    .line 96
    invoke-direct {p0, v6}, Lcom/android/camera/burst/editor/grid/BurstGrid;->updateItemDecoration(I)V

    .line 97
    return-void
.end method

.method public final onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 3

    .prologue
    .line 105
    iget-object v0, p0, Lcom/android/camera/burst/editor/grid/BurstGrid;->framesGridView:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView;->getLayoutManager()Landroid/support/v7/widget/RecyclerView$LayoutManager;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/GridLayoutManager;

    .line 106
    invoke-static {p1}, Lcom/android/camera/burst/editor/grid/BurstGrid;->getGridWidth(Landroid/content/res/Configuration;)I

    move-result v1

    .line 107
    invoke-virtual {v0, v1}, Landroid/support/v7/widget/GridLayoutManager;->setSpanCount(I)V

    .line 108
    new-instance v2, Lcom/android/camera/burst/editor/grid/BurstGrid$GridSpanSizeLookup;

    invoke-direct {v2, p0, v1}, Lcom/android/camera/burst/editor/grid/BurstGrid$GridSpanSizeLookup;-><init>(Lcom/android/camera/burst/editor/grid/BurstGrid;I)V

    invoke-virtual {v0, v2}, Landroid/support/v7/widget/GridLayoutManager;->setSpanSizeLookup(Landroid/support/v7/widget/GridLayoutManager$SpanSizeLookup;)V

    .line 109
    invoke-direct {p0, v1}, Lcom/android/camera/burst/editor/grid/BurstGrid;->updateItemDecoration(I)V

    .line 110
    return-void
.end method

.method public final updateGridImageForItem(Lcom/android/camera/data/BurstFrameItem;)V
    .locals 4

    .prologue
    .line 151
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v0, p0, Lcom/android/camera/burst/editor/grid/BurstGrid;->framesGridView:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView;->getAdapter()Landroid/support/v7/widget/RecyclerView$Adapter;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView$Adapter;->getItemCount()I

    move-result v0

    if-ge v1, v0, :cond_1

    .line 152
    iget-object v0, p0, Lcom/android/camera/burst/editor/grid/BurstGrid;->framesRecyclerViewAdapter:Lcom/android/camera/burst/editor/grid/GridFramesImageViewAdapter;

    invoke-virtual {v0, v1}, Lcom/android/camera/burst/editor/grid/GridFramesImageViewAdapter;->isThumbnail(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 155
    iget-object v0, p0, Lcom/android/camera/burst/editor/grid/BurstGrid;->framesGridView:Landroid/support/v7/widget/RecyclerView;

    .line 156
    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->findViewHolderForAdapterPosition(I)Landroid/support/v7/widget/RecyclerView$ViewHolder;

    move-result-object v0

    check-cast v0, Lcom/android/camera/burst/editor/grid/GridFrameViewHolder;

    .line 157
    if-eqz v0, :cond_0

    .line 158
    invoke-virtual {v0}, Lcom/android/camera/burst/editor/grid/GridFrameViewHolder;->getUri()Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {p1}, Lcom/android/camera/data/BurstFrameItem;->getData()Lcom/android/camera/data/FilmstripItemData;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/camera/data/FilmstripItemData;->getUri()Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 159
    iget-object v2, p0, Lcom/android/camera/burst/editor/grid/BurstGrid;->context:Landroid/content/Context;

    invoke-static {v2}, Lcom/bumptech/glide/Glide;->with(Landroid/content/Context;)Lcom/bumptech/glide/RequestManager;

    move-result-object v2

    invoke-virtual {v0, v2, p1}, Lcom/android/camera/burst/editor/grid/GridFrameViewHolder;->updateImage(Lcom/bumptech/glide/RequestManager;Lcom/android/camera/data/BurstFrameItem;)V

    .line 151
    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 163
    :cond_1
    return-void
.end method

.method public final viewHolderForPosition(I)Lcom/android/camera/burst/editor/grid/GridFrameViewHolder;
    .locals 1

    .prologue
    .line 167
    iget-object v0, p0, Lcom/android/camera/burst/editor/grid/BurstGrid;->framesGridView:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0, p1}, Landroid/support/v7/widget/RecyclerView;->findViewHolderForAdapterPosition(I)Landroid/support/v7/widget/RecyclerView$ViewHolder;

    move-result-object v0

    check-cast v0, Lcom/android/camera/burst/editor/grid/GridFrameViewHolder;

    return-object v0
.end method
