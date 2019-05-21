.class public final Lcom/android/camera/data/PlaceholderItem;
.super Ljava/lang/Object;
.source "PlaceholderItem.java"

# interfaces
.implements Lcom/android/camera/data/FilmstripItem;


# static fields
.field private static final PLACEHOLDER_ITEM_ATTRIBUTES:Lcom/android/camera/data/FilmstripItemAttributes;


# instance fields
.field private final attributes:Lcom/android/camera/data/FilmstripItemAttributes;

.field private final deviceUnlocker:Lcom/android/camera/util/activity/DeviceUnlocker;

.field private filmstripDataAdapter$9HHMUR9FC5N68SJFD5I2UOR1DLIN4O9FCHGN8O9F9HNM6OBC8PKMORBJEHP6IS24C5Q62GB4C5O78PBI7C______:Lcom/android/camera/filmstrip/FilmstripDataAdapter;

.field private imageViewSettableFuture:Lcom/google/common/util/concurrent/SettableFuture;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/util/concurrent/SettableFuture",
            "<",
            "Landroid/widget/ImageView;",
            ">;"
        }
    .end annotation
.end field

.field private final itemData:Lcom/android/camera/data/FilmstripItemData;

.field private final itemViewType$9HHMUR9FC5N68SJFD5I2UOR1DLIN4O9FCHGN8O9F8PKMORBJEHP6IS29EHIMQL3PE1IJM___:I

.field private metaData:Lcom/android/camera/data/Metadata;

.field private final view:Landroid/view/View;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 25
    const-string v0, "PlaceholderItem"

    invoke-static {v0}, Lcom/android/camera/debug/Log;->makeTag(Ljava/lang/String;)Ljava/lang/String;

    .line 28
    new-instance v0, Lcom/android/camera/data/FilmstripItemAttributes$Builder;

    invoke-direct {v0}, Lcom/android/camera/data/FilmstripItemAttributes$Builder;-><init>()V

    .line 29
    invoke-virtual {v0}, Lcom/android/camera/data/FilmstripItemAttributes$Builder;->build()Lcom/android/camera/data/FilmstripItemAttributes;

    move-result-object v0

    sput-object v0, Lcom/android/camera/data/PlaceholderItem;->PLACEHOLDER_ITEM_ATTRIBUTES:Lcom/android/camera/data/FilmstripItemAttributes;

    .line 28
    return-void
.end method

.method public constructor <init>(Landroid/view/View;ILcom/android/camera/util/activity/DeviceUnlocker;II)V
    .locals 19

    .prologue
    .line 43
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 44
    invoke-static/range {p1 .. p1}, Lcom/google/common/base/ExtraObjectsMethodsForWeb;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/camera/data/PlaceholderItem;->view:Landroid/view/View;

    .line 45
    move/from16 v0, p2

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/camera/data/PlaceholderItem;->itemViewType$9HHMUR9FC5N68SJFD5I2UOR1DLIN4O9FCHGN8O9F8PKMORBJEHP6IS29EHIMQL3PE1IJM___:I

    .line 46
    invoke-static/range {p3 .. p3}, Lcom/google/common/base/ExtraObjectsMethodsForWeb;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/camera/util/activity/DeviceUnlocker;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/camera/data/PlaceholderItem;->deviceUnlocker:Lcom/android/camera/util/activity/DeviceUnlocker;

    .line 47
    new-instance v2, Lcom/android/camera/util/Size;

    move/from16 v0, p4

    move/from16 v1, p5

    invoke-direct {v2, v0, v1}, Lcom/android/camera/util/Size;-><init>(II)V

    .line 48
    new-instance v8, Ljava/util/Date;

    const-wide/16 v4, 0x0

    invoke-direct {v8, v4, v5}, Ljava/util/Date;-><init>(J)V

    .line 49
    new-instance v9, Ljava/util/Date;

    const-wide/16 v4, 0x0

    invoke-direct {v9, v4, v5}, Ljava/util/Date;-><init>(J)V

    .line 50
    new-instance v3, Lcom/android/camera/data/Metadata$Builder;

    invoke-direct {v3}, Lcom/android/camera/data/Metadata$Builder;-><init>()V

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Lcom/android/camera/data/Metadata$Builder;->setLoaded(Z)Lcom/android/camera/data/Metadata$Builder;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/camera/data/Metadata$Builder;->build()Lcom/android/camera/data/Metadata;

    move-result-object v3

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/camera/data/PlaceholderItem;->metaData:Lcom/android/camera/data/Metadata;

    .line 51
    new-instance v3, Landroid/net/Uri$Builder;

    invoke-direct {v3}, Landroid/net/Uri$Builder;-><init>()V

    .line 52
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v6

    .line 53
    const-string v4, "simple_view_data"

    invoke-virtual {v3, v4}, Landroid/net/Uri$Builder;->scheme(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v4

    invoke-virtual {v4, v6}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 54
    invoke-virtual {v3}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v11

    .line 56
    new-instance v3, Lcom/android/camera/data/FilmstripItemData;

    const-wide/16 v4, -0x1

    const-string v7, ""

    const-string v10, ""

    const/4 v12, 0x0

    .line 66
    invoke-static {v2}, Lcom/google/common/base/Optional;->of(Ljava/lang/Object;)Lcom/google/common/base/Optional;

    move-result-object v13

    const-wide/16 v14, 0x0

    const/16 v16, 0x0

    sget-object v17, Lcom/android/camera/data/Location;->UNKNOWN:Lcom/android/camera/data/Location;

    const/16 v18, 0x0

    invoke-direct/range {v3 .. v18}, Lcom/android/camera/data/FilmstripItemData;-><init>(JLjava/lang/String;Ljava/lang/String;Ljava/util/Date;Ljava/util/Date;Ljava/lang/String;Landroid/net/Uri;ZLcom/google/common/base/Optional;JILcom/android/camera/data/Location;Z)V

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/camera/data/PlaceholderItem;->itemData:Lcom/android/camera/data/FilmstripItemData;

    .line 72
    sget-object v2, Lcom/android/camera/data/PlaceholderItem;->PLACEHOLDER_ITEM_ATTRIBUTES:Lcom/android/camera/data/FilmstripItemAttributes;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/camera/data/PlaceholderItem;->attributes:Lcom/android/camera/data/FilmstripItemAttributes;

    .line 73
    invoke-static {}, Lcom/google/common/util/concurrent/SettableFuture;->create()Lcom/google/common/util/concurrent/SettableFuture;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/camera/data/PlaceholderItem;->imageViewSettableFuture:Lcom/google/common/util/concurrent/SettableFuture;

    .line 74
    return-void
.end method


# virtual methods
.method public final createView$51666RRD5TJMURR7DHIIUORFDLMMURHFC9GN6P9F9TO78QBFDPGMOEQCCDNMQBR1DPI74RR9CGNM6OBDCLP62BR4C5Q62BQCDTHM2R26D5M6QSRKE9KN0H31EHGK2P31E1Q6ASHRB9666RRD5TGMSP3IDTKM8BR3C5MMASJ15TI62T315T36IR3DEDQ74QBG95Q6AR94APKM8PBF8DM6IORBCLI46OBCDHH62ORB7CKKOOBECHP6UQB45TR6IPBN5TB6IPBN7C______(Lcom/google/common/base/Optional;Lcom/android/camera/filmstrip/FilmstripDataAdapter;ZLcom/android/camera/one/v2/lifecycle/StartTasks;)Landroid/view/View;
    .locals 3
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
    .line 113
    iget-object v0, p0, Lcom/android/camera/data/PlaceholderItem;->view:Landroid/view/View;

    instance-of v0, v0, Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    .line 114
    iget-object v1, p0, Lcom/android/camera/data/PlaceholderItem;->imageViewSettableFuture:Lcom/google/common/util/concurrent/SettableFuture;

    iget-object v0, p0, Lcom/android/camera/data/PlaceholderItem;->view:Landroid/view/View;

    check-cast v0, Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Lcom/google/common/util/concurrent/SettableFuture;->set(Ljava/lang/Object;)Z

    .line 119
    :goto_0
    iput-object p2, p0, Lcom/android/camera/data/PlaceholderItem;->filmstripDataAdapter$9HHMUR9FC5N68SJFD5I2UOR1DLIN4O9FCHGN8O9F9HNM6OBC8PKMORBJEHP6IS24C5Q62GB4C5O78PBI7C______:Lcom/android/camera/filmstrip/FilmstripDataAdapter;

    .line 120
    iget-object v0, p0, Lcom/android/camera/data/PlaceholderItem;->view:Landroid/view/View;

    return-object v0

    .line 116
    :cond_0
    iget-object v0, p0, Lcom/android/camera/data/PlaceholderItem;->imageViewSettableFuture:Lcom/google/common/util/concurrent/SettableFuture;

    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Image view future set in placeholder item that does not have an ImageView"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/google/common/util/concurrent/SettableFuture;->setException(Ljava/lang/Throwable;)Z

    goto :goto_0
.end method

.method public final delete()Z
    .locals 1

    .prologue
    .line 98
    const/4 v0, 0x0

    return v0
.end method

.method public final generateThumbnail(II)Lcom/google/android/apps/camera/uiutils/TypedThumbnailBitmap;
    .locals 3

    .prologue
    .line 172
    new-instance v0, Lcom/google/android/apps/camera/uiutils/TypedThumbnailBitmap;

    invoke-static {}, Lcom/google/common/base/Optional;->absent()Lcom/google/common/base/Optional;

    move-result-object v1

    sget v2, Lcom/google/android/apps/camera/uiutils/TypedThumbnailBitmap$ThumbnailType;->PLACEHOLDER$9HHMUR9FCTNMUPRCCKNM2RJ4E9NMIP1FC5O70SPFCDGMQPBIC4NNAQBLEHKMOSPFAHSN0PB4AHK7ARB2DPGMIR22D5Q6QOBG4HA6GTBDC9N62QBCAHSN0P9R:I

    invoke-direct {v0, v1, v2}, Lcom/google/android/apps/camera/uiutils/TypedThumbnailBitmap;-><init>(Lcom/google/common/base/Optional;I)V

    return-object v0
.end method

.method public final getAttributes()Lcom/android/camera/data/FilmstripItemAttributes;
    .locals 1

    .prologue
    .line 83
    iget-object v0, p0, Lcom/android/camera/data/PlaceholderItem;->attributes:Lcom/android/camera/data/FilmstripItemAttributes;

    return-object v0
.end method

.method public final getData()Lcom/android/camera/data/FilmstripItemData;
    .locals 1

    .prologue
    .line 78
    iget-object v0, p0, Lcom/android/camera/data/PlaceholderItem;->itemData:Lcom/android/camera/data/FilmstripItemData;

    return-object v0
.end method

.method public final getDimensions()Lcom/android/camera/util/Size;
    .locals 1

    .prologue
    .line 177
    iget-object v0, p0, Lcom/android/camera/data/PlaceholderItem;->itemData:Lcom/android/camera/data/FilmstripItemData;

    invoke-virtual {v0}, Lcom/android/camera/data/FilmstripItemData;->getDimensions()Lcom/android/camera/util/Size;

    move-result-object v0

    return-object v0
.end method

.method public final getImageViewFuture()Lcom/google/common/util/concurrent/ListenableFuture;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/util/concurrent/ListenableFuture",
            "<",
            "Landroid/widget/ImageView;",
            ">;"
        }
    .end annotation

    .prologue
    .line 103
    iget-object v0, p0, Lcom/android/camera/data/PlaceholderItem;->imageViewSettableFuture:Lcom/google/common/util/concurrent/SettableFuture;

    return-object v0
.end method

.method public final getItemViewType$50KKOORFDKNM2RJ4E9NMIP1FCDGMQPBIC4NM8OBKC4NKCQBCDLPN8SJ9E14N8PBDAHSN0P9R()I
    .locals 1

    .prologue
    .line 88
    iget v0, p0, Lcom/android/camera/data/PlaceholderItem;->itemViewType$9HHMUR9FC5N68SJFD5I2UOR1DLIN4O9FCHGN8O9F8PKMORBJEHP6IS29EHIMQL3PE1IJM___:I

    return v0
.end method

.method public final getMediaDetails()Lcom/google/common/base/Optional;
    .locals 1
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
    .line 157
    invoke-static {}, Lcom/google/common/base/Optional;->absent()Lcom/google/common/base/Optional;

    move-result-object v0

    return-object v0
.end method

.method public final getMetadata()Lcom/android/camera/data/Metadata;
    .locals 1

    .prologue
    .line 162
    iget-object v0, p0, Lcom/android/camera/data/PlaceholderItem;->metaData:Lcom/android/camera/data/Metadata;

    return-object v0
.end method

.method public final getOrientation()I
    .locals 1

    .prologue
    .line 182
    iget-object v0, p0, Lcom/android/camera/data/PlaceholderItem;->itemData:Lcom/android/camera/data/FilmstripItemData;

    invoke-virtual {v0}, Lcom/android/camera/data/FilmstripItemData;->getOrientation()I

    move-result v0

    return v0
.end method

.method public final onSingleTapUp$51666RRD5TGMSP3IDTKM8BR3C5MMASJ15TGN0S1F8DGMQPBIC50M6T39EPKN8UA3DTN78SJFDHM6ASHR55D0____(Lcom/android/camera/app/AppController;)Z
    .locals 2

    .prologue
    .line 188
    iget-object v0, p0, Lcom/android/camera/data/PlaceholderItem;->deviceUnlocker:Lcom/android/camera/util/activity/DeviceUnlocker;

    iget-object v1, p0, Lcom/android/camera/data/PlaceholderItem;->filmstripDataAdapter$9HHMUR9FC5N68SJFD5I2UOR1DLIN4O9FCHGN8O9F9HNM6OBC8PKMORBJEHP6IS24C5Q62GB4C5O78PBI7C______:Lcom/android/camera/filmstrip/FilmstripDataAdapter;

    invoke-interface {v1}, Lcom/android/camera/filmstrip/FilmstripDataAdapter;->getCount()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Lcom/android/camera/util/activity/DeviceUnlocker;->unlockAndOpenFilmstrip(I)V

    .line 189
    const/4 v0, 0x1

    return v0
.end method

.method public final recycle(Landroid/view/View;)V
    .locals 0

    .prologue
    .line 153
    return-void
.end method

.method public final refresh()Lcom/android/camera/data/FilmstripItem;
    .locals 0

    .prologue
    .line 93
    return-object p0
.end method

.method public final renderFullRes(Landroid/view/View;)V
    .locals 0

    .prologue
    .line 145
    return-void
.end method

.method public final renderThumbnail(Landroid/view/View;)V
    .locals 0

    .prologue
    .line 142
    return-void
.end method

.method public final renderThumbnailWithPlaceholder(Landroid/view/View;Landroid/graphics/Bitmap;)V
    .locals 0

    .prologue
    .line 148
    return-void
.end method

.method public final renderTiny(Landroid/view/View;)V
    .locals 0

    .prologue
    .line 139
    return-void
.end method

.method public final setMetadata(Lcom/android/camera/data/Metadata;)V
    .locals 0

    .prologue
    .line 167
    iput-object p1, p0, Lcom/android/camera/data/PlaceholderItem;->metaData:Lcom/android/camera/data/Metadata;

    .line 168
    return-void
.end method

.method public final setSuggestedSize(II)V
    .locals 0

    .prologue
    .line 124
    return-void
.end method

.method public final setUpdateCallback$51666RRD5TGMSP3IDTKM8BR3C5MMASJ15TI62T315T36IR3DEDQ74QBG95Q6AR94ALO68OBKCL1M2R3CC9GM6QPR55B0____(Lcom/android/camera/burst/BurstA11yButtonController$Listener;)V
    .locals 0

    .prologue
    .line 129
    return-void
.end method
