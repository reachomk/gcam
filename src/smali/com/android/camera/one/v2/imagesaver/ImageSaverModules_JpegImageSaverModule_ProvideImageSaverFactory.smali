.class public final Lcom/android/camera/one/v2/imagesaver/ImageSaverModules_JpegImageSaverModule_ProvideImageSaverFactory;
.super Ljava/lang/Object;
.source "ImageSaverModules_JpegImageSaverModule_ProvideImageSaverFactory.java"

# interfaces
.implements Ljavax/inject/Provider;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljavax/inject/Provider;"
    }
.end annotation


# instance fields
.field private final imageSaverProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<",
            "Lcom/android/camera/one/v2/imagesaver/JpegImageBackendImageSaver;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Ljavax/inject/Provider;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider",
            "<",
            "Lcom/android/camera/one/v2/imagesaver/JpegImageBackendImageSaver;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    iput-object p1, p0, Lcom/android/camera/one/v2/imagesaver/ImageSaverModules_JpegImageSaverModule_ProvideImageSaverFactory;->imageSaverProvider:Ljavax/inject/Provider;

    .line 17
    return-void
.end method

.method public static create$5166KOBMC5S2UQBED9IM6T1FA1P6UTJ9CHIN4EP99HI62PR7CLP2UQBEEHIN4RJ1DGNKCOB3EHNN4U9R(Ljavax/inject/Provider;)Ljavax/inject/Provider;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider",
            "<",
            "Lcom/android/camera/one/v2/imagesaver/JpegImageBackendImageSaver;",
            ">;)",
            "Ljavax/inject/Provider;"
        }
    .end annotation

    .prologue
    .line 28
    new-instance v0, Lcom/android/camera/one/v2/imagesaver/ImageSaverModules_JpegImageSaverModule_ProvideImageSaverFactory;

    invoke-direct {v0, p0}, Lcom/android/camera/one/v2/imagesaver/ImageSaverModules_JpegImageSaverModule_ProvideImageSaverFactory;-><init>(Ljavax/inject/Provider;)V

    return-object v0
.end method


# virtual methods
.method public final synthetic get()Ljava/lang/Object;
    .locals 3

    .prologue
    .line 8
    .line 1021
    iget-object v0, p0, Lcom/android/camera/one/v2/imagesaver/ImageSaverModules_JpegImageSaverModule_ProvideImageSaverFactory;->imageSaverProvider:Ljavax/inject/Provider;

    .line 1022
    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/one/v2/imagesaver/JpegImageBackendImageSaver;

    .line 1121
    new-instance v1, Lcom/android/camera/one/v2/imagesaver/FilteredImageSaver;

    const/16 v2, 0x100

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v2}, Lcom/google/common/collect/ImmutableSet;->of(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableSet;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Lcom/android/camera/one/v2/imagesaver/FilteredImageSaver;-><init>(Lcom/android/camera/one/v2/imagesaver/PreProcessedImageSaver;Ljava/util/Set;)V

    .line 1022
    const-string v0, "Cannot return null from a non-@Nullable @Provides method"

    .line 1021
    invoke-static {v1, v0}, Landroid/support/v4/widget/DrawerLayout$DrawerLayoutCompatImplApi21;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/one/v2/imagesaver/PreProcessedImageSaver;

    .line 8
    return-object v0
.end method
