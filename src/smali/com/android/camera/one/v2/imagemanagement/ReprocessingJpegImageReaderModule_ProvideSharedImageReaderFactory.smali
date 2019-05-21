.class public final Lcom/android/camera/one/v2/imagemanagement/ReprocessingJpegImageReaderModule_ProvideSharedImageReaderFactory;
.super Ljava/lang/Object;
.source "ReprocessingJpegImageReaderModule_ProvideSharedImageReaderFactory.java"

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
.field private final lifetimeProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<",
            "Lcom/google/android/apps/camera/async/Lifetime;",
            ">;"
        }
    .end annotation
.end field

.field private final module$9HHMUR9FC5N68SJFD5I2UOR1DLIN4O9FDTN6ABRM68NMIRB1CTIMQOBEC5JMARB5DPQ2UKJ5E1P6UOR5EDPMIRJ799O6APQ9DLGMEPAICLGM8PBI9LNM8TBCCKTG____:Lcom/google/android/libraries/smartburst/integration/PostProcessComponents;

.field private final outputImageSourceProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<",
            "Lcom/android/camera/one/v2/imagemanagement/imagesource/ImageSourceProvider;",
            ">;"
        }
    .end annotation
.end field

.field private final pictureConfigurationProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<",
            "Lcom/android/camera/one/v2/util/PictureConfiguration;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Lcom/google/android/libraries/smartburst/integration/PostProcessComponents;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/libraries/smartburst/integration/PostProcessComponents;",
            "Ljavax/inject/Provider",
            "<",
            "Lcom/google/android/apps/camera/async/Lifetime;",
            ">;",
            "Ljavax/inject/Provider",
            "<",
            "Lcom/android/camera/one/v2/util/PictureConfiguration;",
            ">;",
            "Ljavax/inject/Provider",
            "<",
            "Lcom/android/camera/one/v2/imagemanagement/imagesource/ImageSourceProvider;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    iput-object p1, p0, Lcom/android/camera/one/v2/imagemanagement/ReprocessingJpegImageReaderModule_ProvideSharedImageReaderFactory;->module$9HHMUR9FC5N68SJFD5I2UOR1DLIN4O9FDTN6ABRM68NMIRB1CTIMQOBEC5JMARB5DPQ2UKJ5E1P6UOR5EDPMIRJ799O6APQ9DLGMEPAICLGM8PBI9LNM8TBCCKTG____:Lcom/google/android/libraries/smartburst/integration/PostProcessComponents;

    .line 31
    iput-object p2, p0, Lcom/android/camera/one/v2/imagemanagement/ReprocessingJpegImageReaderModule_ProvideSharedImageReaderFactory;->lifetimeProvider:Ljavax/inject/Provider;

    .line 33
    iput-object p3, p0, Lcom/android/camera/one/v2/imagemanagement/ReprocessingJpegImageReaderModule_ProvideSharedImageReaderFactory;->pictureConfigurationProvider:Ljavax/inject/Provider;

    .line 35
    iput-object p4, p0, Lcom/android/camera/one/v2/imagemanagement/ReprocessingJpegImageReaderModule_ProvideSharedImageReaderFactory;->outputImageSourceProvider:Ljavax/inject/Provider;

    .line 36
    return-void
.end method

.method public static create$51666RRD5TGMSP3IDTKM8BR3C5MMASJ15TNMSP9FEOP2UQBDC5JMARB1DPGMEPBDCLN78BQICLO74RR3CLPN6QBECT570PB795MM2PR5A9IM2P35E96MUP3LDHIJMJ3AC5R62U1FD5N6KPB3EGNL0SJFEPKM8PBI7D66KOBMC5S2UQBED9IM6T1FA1P6UTJ9CHIN4EQCD9GNCOBO5TKMSQJ5CDQ2UK3IDTR6IP35E8TIIJ34C5JMEPBI5TKMST35E9N62R1F8PGM6T3FE9SJM___(Lcom/google/android/libraries/smartburst/integration/PostProcessComponents;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Ljavax/inject/Provider;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/libraries/smartburst/integration/PostProcessComponents;",
            "Ljavax/inject/Provider",
            "<",
            "Lcom/google/android/apps/camera/async/Lifetime;",
            ">;",
            "Ljavax/inject/Provider",
            "<",
            "Lcom/android/camera/one/v2/util/PictureConfiguration;",
            ">;",
            "Ljavax/inject/Provider",
            "<",
            "Lcom/android/camera/one/v2/imagemanagement/imagesource/ImageSourceProvider;",
            ">;)",
            "Ljavax/inject/Provider;"
        }
    .end annotation

    .prologue
    .line 53
    new-instance v0, Lcom/android/camera/one/v2/imagemanagement/ReprocessingJpegImageReaderModule_ProvideSharedImageReaderFactory;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/android/camera/one/v2/imagemanagement/ReprocessingJpegImageReaderModule_ProvideSharedImageReaderFactory;-><init>(Lcom/google/android/libraries/smartburst/integration/PostProcessComponents;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)V

    return-object v0
.end method


# virtual methods
.method public final synthetic get()Ljava/lang/Object;
    .locals 4

    .prologue
    .line 12
    .line 1040
    iget-object v3, p0, Lcom/android/camera/one/v2/imagemanagement/ReprocessingJpegImageReaderModule_ProvideSharedImageReaderFactory;->module$9HHMUR9FC5N68SJFD5I2UOR1DLIN4O9FDTN6ABRM68NMIRB1CTIMQOBEC5JMARB5DPQ2UKJ5E1P6UOR5EDPMIRJ799O6APQ9DLGMEPAICLGM8PBI9LNM8TBCCKTG____:Lcom/google/android/libraries/smartburst/integration/PostProcessComponents;

    iget-object v0, p0, Lcom/android/camera/one/v2/imagemanagement/ReprocessingJpegImageReaderModule_ProvideSharedImageReaderFactory;->lifetimeProvider:Ljavax/inject/Provider;

    .line 1042
    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/apps/camera/async/Lifetime;

    iget-object v1, p0, Lcom/android/camera/one/v2/imagemanagement/ReprocessingJpegImageReaderModule_ProvideSharedImageReaderFactory;->pictureConfigurationProvider:Ljavax/inject/Provider;

    .line 1043
    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/camera/one/v2/util/PictureConfiguration;

    iget-object v2, p0, Lcom/android/camera/one/v2/imagemanagement/ReprocessingJpegImageReaderModule_ProvideSharedImageReaderFactory;->outputImageSourceProvider:Ljavax/inject/Provider;

    .line 1044
    invoke-interface {v2}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/camera/one/v2/imagemanagement/imagesource/ImageSourceProvider;

    .line 1041
    invoke-virtual {v3, v0, v1, v2}, Lcom/google/android/libraries/smartburst/integration/PostProcessComponents;->provideSharedImageReader(Lcom/google/android/apps/camera/async/Lifetime;Lcom/android/camera/one/v2/util/PictureConfiguration;Lcom/android/camera/one/v2/imagemanagement/imagesource/ImageSourceProvider;)Lcom/android/camera/one/v2/imagemanagement/imagesource/ImageSourceComponent;

    move-result-object v0

    const-string v1, "Cannot return null from a non-@Nullable @Provides method"

    .line 1040
    invoke-static {v0, v1}, Landroid/support/v4/widget/DrawerLayout$DrawerLayoutCompatImplApi21;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/one/v2/imagemanagement/imagesource/ImageSourceComponent;

    .line 12
    return-object v0
.end method
