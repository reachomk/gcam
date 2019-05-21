.class public final Lcom/android/camera/one/v2/imagemanagement/RawImageReaderModule_ProvideFullSizeSurfaceFactory;
.super Ljava/lang/Object;
.source "RawImageReaderModule_ProvideFullSizeSurfaceFactory.java"

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
.field private final imageReaderComponentProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<",
            "Lcom/android/camera/one/v2/imagemanagement/imagesource/ImageSourceComponent;",
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
            "Lcom/android/camera/one/v2/imagemanagement/imagesource/ImageSourceComponent;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    iput-object p1, p0, Lcom/android/camera/one/v2/imagemanagement/RawImageReaderModule_ProvideFullSizeSurfaceFactory;->imageReaderComponentProvider:Ljavax/inject/Provider;

    .line 18
    return-void
.end method

.method public static create$5166KOBMC5S2UQBED9IM6T1FA1P6UTJ9CHIN4EP99HI62PR7CLP2UQBEEHIN4RJ1DGNKCOB3EHNN4U9R(Ljavax/inject/Provider;)Ljavax/inject/Provider;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider",
            "<",
            "Lcom/android/camera/one/v2/imagemanagement/imagesource/ImageSourceComponent;",
            ">;)",
            "Ljavax/inject/Provider;"
        }
    .end annotation

    .prologue
    .line 29
    new-instance v0, Lcom/android/camera/one/v2/imagemanagement/RawImageReaderModule_ProvideFullSizeSurfaceFactory;

    invoke-direct {v0, p0}, Lcom/android/camera/one/v2/imagemanagement/RawImageReaderModule_ProvideFullSizeSurfaceFactory;-><init>(Ljavax/inject/Provider;)V

    return-object v0
.end method


# virtual methods
.method public final synthetic get()Ljava/lang/Object;
    .locals 2

    .prologue
    .line 10
    .line 1022
    iget-object v0, p0, Lcom/android/camera/one/v2/imagemanagement/RawImageReaderModule_ProvideFullSizeSurfaceFactory;->imageReaderComponentProvider:Ljavax/inject/Provider;

    .line 1023
    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/one/v2/imagemanagement/imagesource/ImageSourceComponent;

    .line 1062
    invoke-interface {v0}, Lcom/android/camera/one/v2/imagemanagement/imagesource/ImageSourceComponent;->surface()Landroid/view/Surface;

    move-result-object v0

    .line 1023
    const-string v1, "Cannot return null from a non-@Nullable @Provides method"

    .line 1022
    invoke-static {v0, v1}, Landroid/support/v4/widget/DrawerLayout$DrawerLayoutCompatImplApi21;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/Surface;

    .line 10
    return-object v0
.end method
