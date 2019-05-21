.class public final Lcom/android/camera/burst/editor/BurstGridSections;
.super Ljava/lang/Object;
.source "BurstGridSections.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/camera/burst/editor/BurstGridSections$Element;,
        Lcom/android/camera/burst/editor/BurstGridSections$GridElementType;
    }
.end annotation


# instance fields
.field private burstItem:Lcom/android/camera/data/BurstItem;


# direct methods
.method public constructor <init>(Lcom/android/camera/data/BurstItem;)V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    iput-object p1, p0, Lcom/android/camera/burst/editor/BurstGridSections;->burstItem:Lcom/android/camera/data/BurstItem;

    .line 22
    return-void
.end method


# virtual methods
.method public final elementAt(I)Lcom/android/camera/burst/editor/BurstGridSections$Element;
    .locals 5

    .prologue
    const/4 v3, 0x0

    const/4 v4, 0x0

    .line 118
    invoke-virtual {p0}, Lcom/android/camera/burst/editor/BurstGridSections;->numRecyclerViewElements()I

    move-result v0

    invoke-static {p1, v0}, Lcom/google/common/base/ExtraObjectsMethodsForWeb;->checkElementIndex(II)I

    .line 120
    iget-object v0, p0, Lcom/android/camera/burst/editor/BurstGridSections;->burstItem:Lcom/android/camera/data/BurstItem;

    invoke-virtual {v0}, Lcom/android/camera/data/BurstItem;->getData()Lcom/android/camera/data/FilmstripItemData;

    move-result-object v0

    check-cast v0, Lcom/android/camera/data/BurstItemData;

    .line 121
    invoke-virtual {v0}, Lcom/android/camera/data/BurstItemData;->getBestList()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    .line 122
    invoke-virtual {v0}, Lcom/android/camera/data/BurstItemData;->getBurstList()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    .line 125
    if-ne v1, v2, :cond_0

    .line 126
    new-instance v1, Lcom/android/camera/burst/editor/BurstGridSections$Element;

    sget-object v2, Lcom/android/camera/burst/editor/BurstGridSections$GridElementType;->BEST_ELEMENTS_THUMBNAIL:Lcom/android/camera/burst/editor/BurstGridSections$GridElementType;

    .line 127
    invoke-virtual {v0}, Lcom/android/camera/data/BurstItemData;->getBurstList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/data/BurstFrameItem;

    invoke-direct {v1, v2, v0, p1, v4}, Lcom/android/camera/burst/editor/BurstGridSections$Element;-><init>(Lcom/android/camera/burst/editor/BurstGridSections$GridElementType;Lcom/android/camera/data/BurstFrameItem;IB)V

    move-object v0, v1

    .line 145
    :goto_0
    return-object v0

    .line 128
    :cond_0
    if-nez v1, :cond_1

    .line 130
    new-instance v1, Lcom/android/camera/burst/editor/BurstGridSections$Element;

    sget-object v2, Lcom/android/camera/burst/editor/BurstGridSections$GridElementType;->ALL_ELEMENTS_THUMBNAIL:Lcom/android/camera/burst/editor/BurstGridSections$GridElementType;

    .line 131
    invoke-virtual {v0}, Lcom/android/camera/data/BurstItemData;->getBurstList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/data/BurstFrameItem;

    invoke-direct {v1, v2, v0, p1, v4}, Lcom/android/camera/burst/editor/BurstGridSections$Element;-><init>(Lcom/android/camera/burst/editor/BurstGridSections$GridElementType;Lcom/android/camera/data/BurstFrameItem;IB)V

    move-object v0, v1

    .line 130
    goto :goto_0

    .line 133
    :cond_1
    add-int/lit8 v1, v1, 0x1

    .line 135
    if-nez p1, :cond_2

    .line 136
    new-instance v0, Lcom/android/camera/burst/editor/BurstGridSections$Element;

    sget-object v1, Lcom/android/camera/burst/editor/BurstGridSections$GridElementType;->BEST_ELEMENTS_HEADER:Lcom/android/camera/burst/editor/BurstGridSections$GridElementType;

    invoke-direct {v0, v1, v3, v4, v4}, Lcom/android/camera/burst/editor/BurstGridSections$Element;-><init>(Lcom/android/camera/burst/editor/BurstGridSections$GridElementType;Lcom/android/camera/data/BurstFrameItem;IB)V

    goto :goto_0

    .line 137
    :cond_2
    if-ge p1, v1, :cond_3

    .line 138
    add-int/lit8 v2, p1, -0x1

    .line 139
    new-instance v1, Lcom/android/camera/burst/editor/BurstGridSections$Element;

    sget-object v3, Lcom/android/camera/burst/editor/BurstGridSections$GridElementType;->BEST_ELEMENTS_THUMBNAIL:Lcom/android/camera/burst/editor/BurstGridSections$GridElementType;

    .line 140
    invoke-virtual {v0}, Lcom/android/camera/data/BurstItemData;->getBestList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/data/BurstFrameItem;

    invoke-direct {v1, v3, v0, v2, v4}, Lcom/android/camera/burst/editor/BurstGridSections$Element;-><init>(Lcom/android/camera/burst/editor/BurstGridSections$GridElementType;Lcom/android/camera/data/BurstFrameItem;IB)V

    move-object v0, v1

    .line 139
    goto :goto_0

    .line 141
    :cond_3
    if-ne p1, v1, :cond_4

    .line 142
    new-instance v0, Lcom/android/camera/burst/editor/BurstGridSections$Element;

    sget-object v1, Lcom/android/camera/burst/editor/BurstGridSections$GridElementType;->ALL_ELEMENTS_HEADER:Lcom/android/camera/burst/editor/BurstGridSections$GridElementType;

    invoke-direct {v0, v1, v3, v4, v4}, Lcom/android/camera/burst/editor/BurstGridSections$Element;-><init>(Lcom/android/camera/burst/editor/BurstGridSections$GridElementType;Lcom/android/camera/data/BurstFrameItem;IB)V

    goto :goto_0

    .line 144
    :cond_4
    sub-int v1, p1, v1

    add-int/lit8 v2, v1, -0x1

    .line 145
    new-instance v1, Lcom/android/camera/burst/editor/BurstGridSections$Element;

    sget-object v3, Lcom/android/camera/burst/editor/BurstGridSections$GridElementType;->ALL_ELEMENTS_THUMBNAIL:Lcom/android/camera/burst/editor/BurstGridSections$GridElementType;

    .line 146
    invoke-virtual {v0}, Lcom/android/camera/data/BurstItemData;->getBurstList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/data/BurstFrameItem;

    invoke-direct {v1, v3, v0, v2, v4}, Lcom/android/camera/burst/editor/BurstGridSections$Element;-><init>(Lcom/android/camera/burst/editor/BurstGridSections$GridElementType;Lcom/android/camera/data/BurstFrameItem;IB)V

    move-object v0, v1

    .line 145
    goto :goto_0
.end method

.method public final numRecyclerViewElements()I
    .locals 2

    .prologue
    .line 99
    iget-object v0, p0, Lcom/android/camera/burst/editor/BurstGridSections;->burstItem:Lcom/android/camera/data/BurstItem;

    invoke-virtual {v0}, Lcom/android/camera/data/BurstItem;->getData()Lcom/android/camera/data/FilmstripItemData;

    move-result-object v0

    check-cast v0, Lcom/android/camera/data/BurstItemData;

    .line 100
    invoke-virtual {v0}, Lcom/android/camera/data/BurstItemData;->getBestList()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    .line 101
    invoke-virtual {v0}, Lcom/android/camera/data/BurstItemData;->getBurstList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    .line 103
    if-eq v1, v0, :cond_0

    if-nez v1, :cond_1

    .line 108
    :cond_0
    :goto_0
    return v0

    :cond_1
    add-int/lit8 v1, v1, 0x1

    add-int/lit8 v1, v1, 0x1

    add-int/2addr v0, v1

    goto :goto_0
.end method

.method public final totalGridElements()I
    .locals 1

    .prologue
    .line 156
    iget-object v0, p0, Lcom/android/camera/burst/editor/BurstGridSections;->burstItem:Lcom/android/camera/data/BurstItem;

    invoke-virtual {v0}, Lcom/android/camera/data/BurstItem;->getData()Lcom/android/camera/data/FilmstripItemData;

    move-result-object v0

    check-cast v0, Lcom/android/camera/data/BurstItemData;

    invoke-virtual {v0}, Lcom/android/camera/data/BurstItemData;->getBurstList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method
