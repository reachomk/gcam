.class public Lcom/android/camera/one/v2/onecameraadaptor/OneCameraAdaptorModule;
.super Ljava/lang/Object;
.source "OneCameraAdaptorModule.java"


# instance fields
.field private final videoRotationMetadataLoader:Lcom/android/camera/data/VideoRotationMetadataLoader;


# direct methods
.method public constructor <init>(Lcom/android/camera/data/VideoRotationMetadataLoader;)V
    .locals 0

    .prologue
    .line 1016
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1017
    iput-object p1, p0, Lcom/android/camera/one/v2/onecameraadaptor/OneCameraAdaptorModule;->videoRotationMetadataLoader:Lcom/android/camera/data/VideoRotationMetadataLoader;

    .line 1018
    return-void
.end method


# virtual methods
.method public loadMetadata(Landroid/content/Context;Lcom/android/camera/data/FilmstripItem;)Z
    .locals 5

    .prologue
    const/4 v1, 0x1

    .line 1033
    const/4 v0, 0x0

    .line 1034
    new-instance v2, Lcom/android/camera/data/Metadata$Builder;

    invoke-direct {v2}, Lcom/android/camera/data/Metadata$Builder;-><init>()V

    .line 1035
    invoke-interface {p2}, Lcom/android/camera/data/FilmstripItem;->getAttributes()Lcom/android/camera/data/FilmstripItemAttributes;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/camera/data/FilmstripItemAttributes;->isImage()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1038
    invoke-interface {p2}, Lcom/android/camera/data/FilmstripItem;->getData()Lcom/android/camera/data/FilmstripItemData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/data/FilmstripItemData;->getUri()Landroid/net/Uri;

    move-result-object v0

    .line 1037
    invoke-static {p1, v0, v2}, Landroid/support/v4/content/res/ConfigurationHelper$ConfigurationHelperImpl;->loadPanoramaMetadata(Landroid/content/Context;Landroid/net/Uri;Lcom/android/camera/data/Metadata$Builder;)Z

    move-result v0

    or-int/lit8 v0, v0, 0x0

    .line 1040
    invoke-interface {p2}, Lcom/android/camera/data/FilmstripItem;->getData()Lcom/android/camera/data/FilmstripItemData;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/camera/data/FilmstripItemData;->getUri()Landroid/net/Uri;

    move-result-object v3

    invoke-static {p1, v3, v2}, Landroid/support/v4/content/res/ConfigurationHelper$ConfigurationHelperImpl;->loadRgbzMetadata(Landroid/content/Context;Landroid/net/Uri;Lcom/android/camera/data/Metadata$Builder;)Z

    move-result v3

    or-int/2addr v0, v3

    .line 1041
    invoke-static {v2, p2}, Landroid/support/v4/content/res/ConfigurationHelper$ConfigurationHelperImpl;->loadAnimationMetadata(Lcom/android/camera/data/Metadata$Builder;Lcom/android/camera/data/FilmstripItem;)Z

    move-result v3

    or-int/2addr v0, v3

    .line 1052
    :cond_0
    :goto_0
    invoke-virtual {v2, v1}, Lcom/android/camera/data/Metadata$Builder;->setLoaded(Z)Lcom/android/camera/data/Metadata$Builder;

    .line 1053
    invoke-virtual {v2}, Lcom/android/camera/data/Metadata$Builder;->build()Lcom/android/camera/data/Metadata;

    move-result-object v1

    invoke-interface {p2, v1}, Lcom/android/camera/data/FilmstripItem;->setMetadata(Lcom/android/camera/data/Metadata;)V

    .line 1054
    return v0

    .line 1042
    :cond_1
    invoke-interface {p2}, Lcom/android/camera/data/FilmstripItem;->getAttributes()Lcom/android/camera/data/FilmstripItemAttributes;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/camera/data/FilmstripItemAttributes;->isVideo()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 1044
    invoke-interface {p2}, Lcom/android/camera/data/FilmstripItem;->getData()Lcom/android/camera/data/FilmstripItemData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/data/FilmstripItemData;->getFilePath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/android/camera/data/VideoRotationMetadataLoader;->loadRotationMetadata(Lcom/android/camera/data/Metadata$Builder;Ljava/lang/String;)Z

    move-result v0

    goto :goto_0

    .line 1045
    :cond_2
    invoke-interface {p2}, Lcom/android/camera/data/FilmstripItem;->getAttributes()Lcom/android/camera/data/FilmstripItemAttributes;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/camera/data/FilmstripItemAttributes;->isBurst()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1046
    invoke-interface {p2}, Lcom/android/camera/data/FilmstripItem;->getItemViewType$50KKOORFDKNM2RJ4E9NMIP1FCDGMQPBIC4NM8OBKC4NKCQBCDLPN8SJ9E14N8PBDAHSN0P9R()I

    move-result v3

    sget v4, Lcom/android/camera/data/FilmstripItemType;->BURST$9HHMUR9FC5N68SJFD5I2UOR1DLIN4O9FCHGN8O9F8PKMORBJEHP6IS29EHIMQL3PE1IJM___:I

    if-ne v3, v4, :cond_0

    .line 1047
    invoke-virtual {v2, v1}, Lcom/android/camera/data/Metadata$Builder;->setHasBurstData(Z)Lcom/android/camera/data/Metadata$Builder;

    move-object v0, p2

    .line 1048
    check-cast v0, Lcom/android/camera/data/BurstItem;

    invoke-virtual {v0}, Lcom/android/camera/data/BurstItem;->getBurstSize()I

    move-result v0

    invoke-virtual {v2, v0}, Lcom/android/camera/data/Metadata$Builder;->setBurstSize(I)Lcom/android/camera/data/Metadata$Builder;

    move v0, v1

    .line 1049
    goto :goto_0
.end method
