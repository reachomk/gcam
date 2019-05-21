.class public final Lcom/android/camera/data/VideoItem;
.super Lcom/android/camera/data/FilmstripItemBase;
.source "VideoItem.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/camera/data/VideoItem$VideoViewHolder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/camera/data/FilmstripItemBase",
        "<",
        "Lcom/android/camera/data/VideoItemData;",
        ">;"
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;

.field private static final VIDEO_ITEM_ATTRIBUTES:Lcom/android/camera/data/FilmstripItemAttributes;


# instance fields
.field private cachedSize:Lcom/android/camera/util/Size;

.field private final videoItemFactory:Lcom/android/camera/data/VideoItemFactory;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 39
    const-string v0, "VideoItem"

    invoke-static {v0}, Lcom/android/camera/debug/Log;->makeTag(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/camera/data/VideoItem;->TAG:Ljava/lang/String;

    .line 41
    new-instance v0, Lcom/android/camera/data/FilmstripItemAttributes$Builder;

    invoke-direct {v0}, Lcom/android/camera/data/FilmstripItemAttributes$Builder;-><init>()V

    sget-object v1, Lcom/android/camera/data/FilmstripItemAttributes$Attributes;->CAN_SHARE:Lcom/android/camera/data/FilmstripItemAttributes$Attributes;

    .line 43
    invoke-virtual {v0, v1}, Lcom/android/camera/data/FilmstripItemAttributes$Builder;->with(Lcom/android/camera/data/FilmstripItemAttributes$Attributes;)Lcom/android/camera/data/FilmstripItemAttributes$Builder;

    move-result-object v0

    sget-object v1, Lcom/android/camera/data/FilmstripItemAttributes$Attributes;->CAN_PLAY:Lcom/android/camera/data/FilmstripItemAttributes$Attributes;

    .line 44
    invoke-virtual {v0, v1}, Lcom/android/camera/data/FilmstripItemAttributes$Builder;->with(Lcom/android/camera/data/FilmstripItemAttributes$Attributes;)Lcom/android/camera/data/FilmstripItemAttributes$Builder;

    move-result-object v0

    sget-object v1, Lcom/android/camera/data/FilmstripItemAttributes$Attributes;->CAN_DELETE:Lcom/android/camera/data/FilmstripItemAttributes$Attributes;

    .line 45
    invoke-virtual {v0, v1}, Lcom/android/camera/data/FilmstripItemAttributes$Builder;->with(Lcom/android/camera/data/FilmstripItemAttributes$Attributes;)Lcom/android/camera/data/FilmstripItemAttributes$Builder;

    move-result-object v0

    sget-object v1, Lcom/android/camera/data/FilmstripItemAttributes$Attributes;->CAN_SWIPE_AWAY:Lcom/android/camera/data/FilmstripItemAttributes$Attributes;

    .line 46
    invoke-virtual {v0, v1}, Lcom/android/camera/data/FilmstripItemAttributes$Builder;->with(Lcom/android/camera/data/FilmstripItemAttributes$Attributes;)Lcom/android/camera/data/FilmstripItemAttributes$Builder;

    move-result-object v0

    sget-object v1, Lcom/android/camera/data/FilmstripItemAttributes$Attributes;->HAS_DETAILED_CAPTURE_INFO:Lcom/android/camera/data/FilmstripItemAttributes$Attributes;

    .line 47
    invoke-virtual {v0, v1}, Lcom/android/camera/data/FilmstripItemAttributes$Builder;->with(Lcom/android/camera/data/FilmstripItemAttributes$Attributes;)Lcom/android/camera/data/FilmstripItemAttributes$Builder;

    move-result-object v0

    sget-object v1, Lcom/android/camera/data/FilmstripItemAttributes$Attributes;->IS_VIDEO:Lcom/android/camera/data/FilmstripItemAttributes$Attributes;

    .line 48
    invoke-virtual {v0, v1}, Lcom/android/camera/data/FilmstripItemAttributes$Builder;->with(Lcom/android/camera/data/FilmstripItemAttributes$Attributes;)Lcom/android/camera/data/FilmstripItemAttributes$Builder;

    move-result-object v0

    .line 49
    invoke-virtual {v0}, Lcom/android/camera/data/FilmstripItemAttributes$Builder;->build()Lcom/android/camera/data/FilmstripItemAttributes;

    move-result-object v0

    sput-object v0, Lcom/android/camera/data/VideoItem;->VIDEO_ITEM_ATTRIBUTES:Lcom/android/camera/data/FilmstripItemAttributes;

    .line 41
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/camera/data/GlideFilmstripManager;Lcom/android/camera/data/VideoItemData;Lcom/android/camera/data/VideoItemFactory;)V
    .locals 1

    .prologue
    .line 65
    sget-object v0, Lcom/android/camera/data/VideoItem;->VIDEO_ITEM_ATTRIBUTES:Lcom/android/camera/data/FilmstripItemAttributes;

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/android/camera/data/FilmstripItemBase;-><init>(Landroid/content/Context;Lcom/android/camera/data/GlideFilmstripManager;Lcom/android/camera/data/FilmstripItemData;Lcom/android/camera/data/FilmstripItemAttributes;)V

    .line 66
    iput-object p4, p0, Lcom/android/camera/data/VideoItem;->videoItemFactory:Lcom/android/camera/data/VideoItemFactory;

    .line 67
    return-void
.end method

.method private final getBestVideoFileHeight()I
    .locals 1

    .prologue
    .line 85
    iget-object v0, p0, Lcom/android/camera/data/VideoItem;->metaData:Lcom/android/camera/data/Metadata;

    invoke-virtual {v0}, Lcom/android/camera/data/Metadata;->getVideoHeight()I

    move-result v0

    .line 86
    if-lez v0, :cond_0

    .line 89
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/android/camera/data/VideoItem;->data:Lcom/android/camera/data/FilmstripItemData;

    check-cast v0, Lcom/android/camera/data/VideoItemData;

    invoke-virtual {v0}, Lcom/android/camera/data/VideoItemData;->getDimensions()Lcom/android/camera/util/Size;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/util/Size;->getHeight()I

    move-result v0

    goto :goto_0
.end method

.method private final getBestVideoFileWidth()I
    .locals 1

    .prologue
    .line 76
    iget-object v0, p0, Lcom/android/camera/data/VideoItem;->metaData:Lcom/android/camera/data/Metadata;

    invoke-virtual {v0}, Lcom/android/camera/data/Metadata;->getVideoWidth()I

    move-result v0

    .line 77
    if-lez v0, :cond_0

    .line 80
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/android/camera/data/VideoItem;->data:Lcom/android/camera/data/FilmstripItemData;

    check-cast v0, Lcom/android/camera/data/VideoItemData;

    invoke-virtual {v0}, Lcom/android/camera/data/VideoItemData;->getDimensions()Lcom/android/camera/util/Size;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/util/Size;->getWidth()I

    move-result v0

    goto :goto_0
.end method

.method private static getViewHolder(Landroid/view/View;)Lcom/android/camera/data/VideoItem$VideoViewHolder;
    .locals 2

    .prologue
    .line 287
    const v0, 0x7f110013

    invoke-virtual {p0, v0}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v0

    .line 288
    if-eqz v0, :cond_0

    instance-of v1, v0, Lcom/android/camera/data/VideoItem$VideoViewHolder;

    if-eqz v1, :cond_0

    .line 289
    check-cast v0, Lcom/android/camera/data/VideoItem$VideoViewHolder;

    .line 291
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private final isVideoRotated()Z
    .locals 2

    .prologue
    .line 106
    invoke-virtual {p0}, Lcom/android/camera/data/VideoItem;->getMetadata()Lcom/android/camera/data/Metadata;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/data/Metadata;->getVideoOrientation()Ljava/lang/String;

    move-result-object v0

    .line 107
    const-string v1, "90"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "270"

    .line 108
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    .line 107
    goto :goto_0
.end method


# virtual methods
.method public final createView$51666RRD5TJMURR7DHIIUORFDLMMURHFC9GN6P9F9TO78QBFDPGMOEQCCDNMQBR1DPI74RR9CGNM6OBDCLP62BR4C5Q62BQCDTHM2R26D5M6QSRKE9KN0H31EHGK2P31E1Q6ASHRB9666RRD5TGMSP3IDTKM8BR3C5MMASJ15TI62T315T36IR3DEDQ74QBG95Q6AR94APKM8PBF8DM6IORBCLI46OBCDHH62ORB7CKKOOBECHP6UQB45TR6IPBN5TB6IPBN7C______(Lcom/google/common/base/Optional;Lcom/android/camera/filmstrip/FilmstripDataAdapter;ZLcom/android/camera/one/v2/lifecycle/StartTasks;)Landroid/view/View;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/base/Optional",
            "<",
            "Landroid/view/View;",
            ">;",
            "Lcom/android/camera/filmstrip/FilmstripDataAdapter;",
            "Z",
            "Lcom/android/camera/one/v2/lifecycle/StartTasks;",
            ")",
            "Landroid/view/View;"
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 157
    .line 161
    invoke-virtual {p1}, Lcom/google/common/base/Optional;->isPresent()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 162
    invoke-virtual {p1}, Lcom/google/common/base/Optional;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 163
    invoke-static {v0}, Lcom/android/camera/data/VideoItem;->getViewHolder(Landroid/view/View;)Lcom/android/camera/data/VideoItem$VideoViewHolder;

    move-result-object v1

    move-object v8, v1

    move-object v1, v0

    move-object v0, v8

    .line 167
    :goto_0
    if-nez v0, :cond_1

    .line 168
    iget-object v0, p0, Lcom/android/camera/data/VideoItem;->context:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f04003d

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    .line 169
    const v0, 0x7f110014

    .line 1230
    sget v1, Lcom/android/camera/data/FilmstripItemType;->VIDEO$9HHMUR9FC5N68SJFD5I2UOR1DLIN4O9FCHGN8O9F8PKMORBJEHP6IS29EHIMQL3PE1IJM___:I

    .line 169
    add-int/lit8 v1, v1, -0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v3, v0, v1}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 170
    const v0, 0x7f110103

    invoke-virtual {v3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 171
    const v1, 0x7f110104

    invoke-virtual {v3, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    .line 173
    new-instance v2, Lcom/android/camera/data/VideoItem$VideoViewHolder;

    invoke-direct {v2, v0, v1}, Lcom/android/camera/data/VideoItem$VideoViewHolder;-><init>(Landroid/widget/ImageView;Landroid/widget/ImageView;)V

    .line 174
    const v0, 0x7f110013

    invoke-virtual {v3, v0, v2}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    move-object v1, v2

    move-object v2, v3

    .line 177
    :goto_1
    if-eqz v1, :cond_0

    .line 179
    invoke-static {v1}, Lcom/android/camera/data/VideoItem$VideoViewHolder;->access$000(Lcom/android/camera/data/VideoItem$VideoViewHolder;)Landroid/widget/ImageView;

    move-result-object v0

    new-instance v3, Lcom/android/camera/data/VideoItem$1;

    invoke-direct {v3, p0, p4}, Lcom/android/camera/data/VideoItem$1;-><init>(Lcom/android/camera/data/VideoItem;Lcom/android/camera/one/v2/lifecycle/StartTasks;)V

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 187
    iget-object v0, p0, Lcom/android/camera/data/VideoItem;->context:Landroid/content/Context;

    .line 189
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0a0128

    const/4 v0, 0x1

    new-array v5, v0, [Ljava/lang/Object;

    const/4 v6, 0x0

    sget-object v7, Lcom/android/camera/data/VideoItem;->dateFormatter:Ljava/text/DateFormat;

    iget-object v0, p0, Lcom/android/camera/data/VideoItem;->data:Lcom/android/camera/data/FilmstripItemData;

    check-cast v0, Lcom/android/camera/data/VideoItemData;

    .line 192
    invoke-virtual {v0}, Lcom/android/camera/data/VideoItemData;->getLastModifiedDate()Ljava/util/Date;

    move-result-object v0

    invoke-virtual {v7, v0}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v5, v6

    .line 190
    invoke-virtual {v3, v4, v5}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 187
    invoke-virtual {v2, v0}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 197
    :goto_2
    iget-object v0, p0, Lcom/android/camera/data/VideoItem;->imageViewSettableFuture:Lcom/google/common/util/concurrent/SettableFuture;

    invoke-static {v1}, Lcom/android/camera/data/VideoItem$VideoViewHolder;->access$100(Lcom/android/camera/data/VideoItem$VideoViewHolder;)Landroid/widget/ImageView;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/common/util/concurrent/SettableFuture;->set(Ljava/lang/Object;)Z

    .line 198
    invoke-virtual {p0, v2}, Lcom/android/camera/data/VideoItem;->renderThumbnail(Landroid/view/View;)V

    .line 199
    return-object v2

    .line 195
    :cond_0
    sget-object v0, Lcom/android/camera/data/VideoItem;->TAG:Ljava/lang/String;

    const-string v3, "getView called with a view that is not compatible with VideoItem."

    invoke-static {v0, v3}, Lcom/android/camera/debug/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    :cond_1
    move-object v2, v1

    move-object v1, v0

    goto :goto_1

    :cond_2
    move-object v0, v2

    move-object v1, v2

    goto/16 :goto_0
.end method

.method public final delete()Z
    .locals 7

    .prologue
    .line 123
    iget-object v0, p0, Lcom/android/camera/data/VideoItem;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 124
    sget-object v2, Lcom/android/camera/data/VideoDataQuery;->CONTENT_URI:Landroid/net/Uri;

    const-string v0, "_id="

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    iget-object v0, p0, Lcom/android/camera/data/VideoItem;->data:Lcom/android/camera/data/FilmstripItemData;

    check-cast v0, Lcom/android/camera/data/VideoItemData;

    .line 127
    invoke-virtual {v0}, Lcom/android/camera/data/VideoItemData;->getContentId()J

    move-result-wide v4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    add-int/lit8 v6, v6, 0x14

    invoke-direct {v0, v6}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v3, 0x0

    .line 125
    invoke-virtual {v1, v2, v0, v3}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    .line 129
    invoke-super {p0}, Lcom/android/camera/data/FilmstripItemBase;->delete()Z

    move-result v1

    if-nez v1, :cond_0

    if-lez v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final generateThumbnail(II)Lcom/google/android/apps/camera/uiutils/TypedThumbnailBitmap;
    .locals 3

    .prologue
    .line 235
    new-instance v0, Lcom/google/android/apps/camera/uiutils/TypedThumbnailBitmap;

    .line 236
    invoke-virtual {p0}, Lcom/android/camera/data/VideoItem;->getData()Lcom/android/camera/data/FilmstripItemData;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/data/FilmstripItemData;->getFilePath()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/camera/data/FilmstripItemUtils;->loadVideoThumbnail(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-static {v1}, Lcom/google/common/base/Optional;->fromNullable(Ljava/lang/Object;)Lcom/google/common/base/Optional;

    move-result-object v1

    sget v2, Lcom/google/android/apps/camera/uiutils/TypedThumbnailBitmap$ThumbnailType;->VIDEO$9HHMUR9FCTNMUPRCCKNM2RJ4E9NMIP1FC5O70SPFCDGMQPBIC4NNAQBLEHKMOSPFAHSN0PB4AHK7ARB2DPGMIR22D5Q6QOBG4HA6GTBDC9N62QBCAHSN0P9R:I

    invoke-direct {v0, v1, v2}, Lcom/google/android/apps/camera/uiutils/TypedThumbnailBitmap;-><init>(Lcom/google/common/base/Optional;I)V

    .line 235
    return-object v0
.end method

.method public final getDimensions()Lcom/android/camera/util/Size;
    .locals 3

    .prologue
    .line 113
    .line 1098
    invoke-direct {p0}, Lcom/android/camera/data/VideoItem;->isVideoRotated()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-direct {p0}, Lcom/android/camera/data/VideoItem;->getBestVideoFileHeight()I

    move-result v0

    .line 1102
    :goto_0
    invoke-direct {p0}, Lcom/android/camera/data/VideoItem;->isVideoRotated()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-direct {p0}, Lcom/android/camera/data/VideoItem;->getBestVideoFileWidth()I

    move-result v1

    .line 115
    :goto_1
    iget-object v2, p0, Lcom/android/camera/data/VideoItem;->cachedSize:Lcom/android/camera/util/Size;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/camera/data/VideoItem;->cachedSize:Lcom/android/camera/util/Size;

    invoke-virtual {v2}, Lcom/android/camera/util/Size;->getWidth()I

    move-result v2

    if-ne v0, v2, :cond_0

    iget-object v2, p0, Lcom/android/camera/data/VideoItem;->cachedSize:Lcom/android/camera/util/Size;

    invoke-virtual {v2}, Lcom/android/camera/util/Size;->getHeight()I

    move-result v2

    if-eq v1, v2, :cond_1

    .line 116
    :cond_0
    new-instance v2, Lcom/android/camera/util/Size;

    invoke-direct {v2, v0, v1}, Lcom/android/camera/util/Size;-><init>(II)V

    iput-object v2, p0, Lcom/android/camera/data/VideoItem;->cachedSize:Lcom/android/camera/util/Size;

    .line 118
    :cond_1
    iget-object v0, p0, Lcom/android/camera/data/VideoItem;->cachedSize:Lcom/android/camera/util/Size;

    return-object v0

    .line 1098
    :cond_2
    invoke-direct {p0}, Lcom/android/camera/data/VideoItem;->getBestVideoFileWidth()I

    move-result v0

    goto :goto_0

    .line 1102
    :cond_3
    invoke-direct {p0}, Lcom/android/camera/data/VideoItem;->getBestVideoFileHeight()I

    move-result v1

    goto :goto_1
.end method

.method public final getItemViewType$50KKOORFDKNM2RJ4E9NMIP1FCDGMQPBIC4NM8OBKC4NKCQBCDLPN8SJ9E14N8PBDAHSN0P9R()I
    .locals 1

    .prologue
    .line 230
    sget v0, Lcom/android/camera/data/FilmstripItemType;->VIDEO$9HHMUR9FC5N68SJFD5I2UOR1DLIN4O9FCHGN8O9F8PKMORBJEHP6IS29EHIMQL3PE1IJM___:I

    return v0
.end method

.method public final getMediaDetails()Lcom/google/common/base/Optional;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/base/Optional",
            "<",
            "Lcom/android/camera/data/MediaDetails;",
            ">;"
        }
    .end annotation

    .prologue
    .line 134
    invoke-super {p0}, Lcom/android/camera/data/FilmstripItemBase;->getMediaDetails()Lcom/google/common/base/Optional;

    move-result-object v2

    .line 135
    invoke-virtual {v2}, Lcom/google/common/base/Optional;->isPresent()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 136
    invoke-virtual {v2}, Lcom/google/common/base/Optional;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/data/MediaDetails;

    .line 137
    iget-object v3, p0, Lcom/android/camera/data/VideoItem;->context:Landroid/content/Context;

    sget-object v4, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    iget-object v1, p0, Lcom/android/camera/data/VideoItem;->data:Lcom/android/camera/data/FilmstripItemData;

    check-cast v1, Lcom/android/camera/data/VideoItemData;

    .line 139
    invoke-virtual {v1}, Lcom/android/camera/data/VideoItemData;->getVideoDurationMillis()J

    move-result-wide v6

    invoke-virtual {v4, v6, v7}, Ljava/util/concurrent/TimeUnit;->toSeconds(J)J

    move-result-wide v4

    .line 138
    invoke-static {v3, v4, v5}, Lcom/android/camera/data/MediaDetails;->formatDuration(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v1

    .line 140
    const/16 v3, 0x8

    invoke-virtual {v0, v3, v1}, Lcom/android/camera/data/MediaDetails;->addDetail(ILjava/lang/Object;)V

    .line 142
    :cond_0
    return-object v2
.end method

.method public final recycle(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 221
    invoke-super {p0, p1}, Lcom/android/camera/data/FilmstripItemBase;->recycle(Landroid/view/View;)V

    .line 222
    invoke-static {p1}, Lcom/android/camera/data/VideoItem;->getViewHolder(Landroid/view/View;)Lcom/android/camera/data/VideoItem$VideoViewHolder;

    move-result-object v0

    .line 223
    if-eqz v0, :cond_0

    .line 224
    iget-object v1, p0, Lcom/android/camera/data/VideoItem;->context:Landroid/content/Context;

    invoke-static {v1}, Lcom/bumptech/glide/Glide;->with(Landroid/content/Context;)Lcom/bumptech/glide/RequestManager;

    move-result-object v1

    invoke-static {v0}, Lcom/android/camera/data/VideoItem$VideoViewHolder;->access$100(Lcom/android/camera/data/VideoItem$VideoViewHolder;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/bumptech/glide/RequestManager;->clear(Landroid/view/View;)V

    .line 226
    :cond_0
    return-void
.end method

.method public final refresh()Lcom/android/camera/data/FilmstripItem;
    .locals 2

    .prologue
    .line 147
    iget-object v1, p0, Lcom/android/camera/data/VideoItem;->videoItemFactory:Lcom/android/camera/data/VideoItemFactory;

    iget-object v0, p0, Lcom/android/camera/data/VideoItem;->data:Lcom/android/camera/data/FilmstripItemData;

    check-cast v0, Lcom/android/camera/data/VideoItemData;

    invoke-virtual {v0}, Lcom/android/camera/data/VideoItemData;->getUri()Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/android/camera/data/VideoItemFactory;->get(Landroid/net/Uri;)Lcom/android/camera/data/VideoItem;

    move-result-object v0

    return-object v0
.end method

.method public final renderFullRes(Landroid/view/View;)V
    .locals 0

    .prologue
    .line 213
    return-void
.end method

.method public final renderThumbnail(Landroid/view/View;)V
    .locals 5

    .prologue
    .line 209
    invoke-static {p1}, Lcom/android/camera/data/VideoItem;->getViewHolder(Landroid/view/View;)Lcom/android/camera/data/VideoItem$VideoViewHolder;

    move-result-object v1

    .line 1257
    if-eqz v1, :cond_0

    .line 1260
    iget-object v0, p0, Lcom/android/camera/data/VideoItem;->glideManager:Lcom/android/camera/data/GlideFilmstripManager;

    .line 1261
    invoke-virtual {v0}, Lcom/android/camera/data/GlideFilmstripManager;->asBitmap()Lcom/bumptech/glide/RequestBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/android/camera/data/VideoItem;->glideManager:Lcom/android/camera/data/GlideFilmstripManager;

    iget-object v3, p0, Lcom/android/camera/data/VideoItem;->data:Lcom/android/camera/data/FilmstripItemData;

    .line 1262
    invoke-static {v3}, Lcom/android/camera/data/VideoItem;->generateSignature(Lcom/android/camera/data/FilmstripItemData;)Lcom/bumptech/glide/load/Key;

    move-result-object v3

    iget-object v4, p0, Lcom/android/camera/data/VideoItem;->suggestedSize:Lcom/android/camera/util/Size;

    invoke-virtual {v2, v3, v4}, Lcom/android/camera/data/GlideFilmstripManager;->getScreensizeOptions(Lcom/bumptech/glide/load/Key;Lcom/android/camera/util/Size;)Lcom/bumptech/glide/request/RequestOptions;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/bumptech/glide/RequestBuilder;->apply(Lcom/bumptech/glide/request/BaseRequestOptions;)Lcom/bumptech/glide/RequestBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/android/camera/data/VideoItem;->glideManager:Lcom/android/camera/data/GlideFilmstripManager;

    .line 1265
    invoke-virtual {v2}, Lcom/android/camera/data/GlideFilmstripManager;->asBitmap()Lcom/bumptech/glide/RequestBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/camera/data/VideoItem;->glideManager:Lcom/android/camera/data/GlideFilmstripManager;

    iget-object v4, p0, Lcom/android/camera/data/VideoItem;->data:Lcom/android/camera/data/FilmstripItemData;

    .line 1266
    invoke-static {v4}, Lcom/android/camera/data/VideoItem;->generateSignature(Lcom/android/camera/data/FilmstripItemData;)Lcom/bumptech/glide/load/Key;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/android/camera/data/GlideFilmstripManager;->getMediaStoreThumbOptions(Lcom/bumptech/glide/load/Key;)Lcom/bumptech/glide/request/RequestOptions;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/bumptech/glide/RequestBuilder;->apply(Lcom/bumptech/glide/request/BaseRequestOptions;)Lcom/bumptech/glide/RequestBuilder;

    move-result-object v2

    .line 1263
    invoke-virtual {v0, v2}, Lcom/bumptech/glide/RequestBuilder;->thumbnail(Lcom/bumptech/glide/RequestBuilder;)Lcom/bumptech/glide/RequestBuilder;

    move-result-object v2

    iget-object v0, p0, Lcom/android/camera/data/VideoItem;->data:Lcom/android/camera/data/FilmstripItemData;

    check-cast v0, Lcom/android/camera/data/VideoItemData;

    .line 1267
    invoke-virtual {v0}, Lcom/android/camera/data/VideoItemData;->getUri()Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/bumptech/glide/RequestBuilder;->load(Landroid/net/Uri;)Lcom/bumptech/glide/RequestBuilder;

    move-result-object v0

    .line 1268
    invoke-static {v1}, Lcom/android/camera/data/VideoItem$VideoViewHolder;->access$100(Lcom/android/camera/data/VideoItem$VideoViewHolder;)Landroid/widget/ImageView;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/bumptech/glide/RequestBuilder;->into(Landroid/widget/ImageView;)Lcom/bumptech/glide/request/target/Target;

    move-result-object v0

    invoke-interface {v0}, Lcom/bumptech/glide/request/target/Target;->getRequest()Lcom/bumptech/glide/request/Request;

    .line 210
    :cond_0
    return-void
.end method

.method public final renderThumbnailWithPlaceholder(Landroid/view/View;Landroid/graphics/Bitmap;)V
    .locals 6

    .prologue
    .line 216
    invoke-static {p1}, Lcom/android/camera/data/VideoItem;->getViewHolder(Landroid/view/View;)Lcom/android/camera/data/VideoItem$VideoViewHolder;

    move-result-object v1

    .line 1272
    if-eqz v1, :cond_0

    .line 1275
    new-instance v0, Landroid/graphics/drawable/BitmapDrawable;

    iget-object v2, p0, Lcom/android/camera/data/VideoItem;->context:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-direct {v0, v2, p2}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    .line 1276
    iget-object v2, p0, Lcom/android/camera/data/VideoItem;->glideManager:Lcom/android/camera/data/GlideFilmstripManager;

    .line 1277
    invoke-virtual {v2}, Lcom/android/camera/data/GlideFilmstripManager;->asBitmap()Lcom/bumptech/glide/RequestBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/camera/data/VideoItem;->glideManager:Lcom/android/camera/data/GlideFilmstripManager;

    iget-object v4, p0, Lcom/android/camera/data/VideoItem;->data:Lcom/android/camera/data/FilmstripItemData;

    .line 1278
    invoke-static {v4}, Lcom/android/camera/data/VideoItem;->generateSignature(Lcom/android/camera/data/FilmstripItemData;)Lcom/bumptech/glide/load/Key;

    move-result-object v4

    iget-object v5, p0, Lcom/android/camera/data/VideoItem;->suggestedSize:Lcom/android/camera/util/Size;

    invoke-virtual {v3, v4, v5}, Lcom/android/camera/data/GlideFilmstripManager;->getScreensizeOptions(Lcom/bumptech/glide/load/Key;Lcom/android/camera/util/Size;)Lcom/bumptech/glide/request/RequestOptions;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/bumptech/glide/RequestBuilder;->apply(Lcom/bumptech/glide/request/BaseRequestOptions;)Lcom/bumptech/glide/RequestBuilder;

    move-result-object v2

    new-instance v3, Lcom/bumptech/glide/request/RequestOptions;

    invoke-direct {v3}, Lcom/bumptech/glide/request/RequestOptions;-><init>()V

    .line 1280
    invoke-virtual {v3, v0}, Lcom/bumptech/glide/request/RequestOptions;->placeholder(Landroid/graphics/drawable/Drawable;)Lcom/bumptech/glide/request/BaseRequestOptions;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/bumptech/glide/RequestBuilder;->apply(Lcom/bumptech/glide/request/BaseRequestOptions;)Lcom/bumptech/glide/RequestBuilder;

    move-result-object v2

    iget-object v0, p0, Lcom/android/camera/data/VideoItem;->data:Lcom/android/camera/data/FilmstripItemData;

    check-cast v0, Lcom/android/camera/data/VideoItemData;

    .line 1281
    invoke-virtual {v0}, Lcom/android/camera/data/VideoItemData;->getUri()Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/bumptech/glide/RequestBuilder;->load(Landroid/net/Uri;)Lcom/bumptech/glide/RequestBuilder;

    move-result-object v0

    .line 1282
    invoke-static {v1}, Lcom/android/camera/data/VideoItem$VideoViewHolder;->access$100(Lcom/android/camera/data/VideoItem$VideoViewHolder;)Landroid/widget/ImageView;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/bumptech/glide/RequestBuilder;->into(Landroid/widget/ImageView;)Lcom/bumptech/glide/request/target/Target;

    move-result-object v0

    invoke-interface {v0}, Lcom/bumptech/glide/request/target/Target;->getRequest()Lcom/bumptech/glide/request/Request;

    .line 217
    :cond_0
    return-void
.end method

.method public final renderTiny(Landroid/view/View;)V
    .locals 4

    .prologue
    .line 204
    invoke-static {p1}, Lcom/android/camera/data/VideoItem;->getViewHolder(Landroid/view/View;)Lcom/android/camera/data/VideoItem$VideoViewHolder;

    move-result-object v1

    .line 1246
    if-eqz v1, :cond_0

    .line 1249
    iget-object v0, p0, Lcom/android/camera/data/VideoItem;->glideManager:Lcom/android/camera/data/GlideFilmstripManager;

    .line 1250
    invoke-virtual {v0}, Lcom/android/camera/data/GlideFilmstripManager;->asBitmap()Lcom/bumptech/glide/RequestBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/android/camera/data/VideoItem;->glideManager:Lcom/android/camera/data/GlideFilmstripManager;

    iget-object v3, p0, Lcom/android/camera/data/VideoItem;->data:Lcom/android/camera/data/FilmstripItemData;

    .line 1251
    invoke-static {v3}, Lcom/android/camera/data/VideoItem;->generateSignature(Lcom/android/camera/data/FilmstripItemData;)Lcom/bumptech/glide/load/Key;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/camera/data/GlideFilmstripManager;->getMediaStoreThumbOptions(Lcom/bumptech/glide/load/Key;)Lcom/bumptech/glide/request/RequestOptions;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/bumptech/glide/RequestBuilder;->apply(Lcom/bumptech/glide/request/BaseRequestOptions;)Lcom/bumptech/glide/RequestBuilder;

    move-result-object v2

    iget-object v0, p0, Lcom/android/camera/data/VideoItem;->data:Lcom/android/camera/data/FilmstripItemData;

    check-cast v0, Lcom/android/camera/data/VideoItemData;

    .line 1252
    invoke-virtual {v0}, Lcom/android/camera/data/VideoItemData;->getUri()Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/bumptech/glide/RequestBuilder;->load(Landroid/net/Uri;)Lcom/bumptech/glide/RequestBuilder;

    move-result-object v0

    .line 1253
    invoke-static {v1}, Lcom/android/camera/data/VideoItem$VideoViewHolder;->access$100(Lcom/android/camera/data/VideoItem$VideoViewHolder;)Landroid/widget/ImageView;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/bumptech/glide/RequestBuilder;->into(Landroid/widget/ImageView;)Lcom/bumptech/glide/request/target/Target;

    .line 205
    :cond_0
    return-void
.end method

.method public final toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 242
    const-string v1, "VideoItem: "

    iget-object v0, p0, Lcom/android/camera/data/VideoItem;->data:Lcom/android/camera/data/FilmstripItemData;

    check-cast v0, Lcom/android/camera/data/VideoItemData;

    invoke-virtual {v0}, Lcom/android/camera/data/VideoItemData;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto :goto_0
.end method
