.class public final Lcom/android/camera/one/v2/imagemanagement/LargeImageReaderModule_ProvideSharedImageReaderFactory;
.super Ljava/lang/Object;
.source "LargeImageReaderModule_ProvideSharedImageReaderFactory.java"

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
.field private final imageSourceProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<",
            "Lcom/android/camera/one/v2/imagemanagement/imagesource/ImageSourceProvider;",
            ">;"
        }
    .end annotation
.end field

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

.field private final module:Lcom/android/camera/one/v2/imagemanagement/LargeImageReaderModule;

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
.method private constructor <init>(Lcom/android/camera/one/v2/imagemanagement/LargeImageReaderModule;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/camera/one/v2/imagemanagement/LargeImageReaderModule;",
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
    iput-object p1, p0, Lcom/android/camera/one/v2/imagemanagement/LargeImageReaderModule_ProvideSharedImageReaderFactory;->module:Lcom/android/camera/one/v2/imagemanagement/LargeImageReaderModule;

    .line 31
    iput-object p2, p0, Lcom/android/camera/one/v2/imagemanagement/LargeImageReaderModule_ProvideSharedImageReaderFactory;->lifetimeProvider:Ljavax/inject/Provider;

    .line 33
    iput-object p3, p0, Lcom/android/camera/one/v2/imagemanagement/LargeImageReaderModule_ProvideSharedImageReaderFactory;->pictureConfigurationProvider:Ljavax/inject/Provider;

    .line 35
    iput-object p4, p0, Lcom/android/camera/one/v2/imagemanagement/LargeImageReaderModule_ProvideSharedImageReaderFactory;->imageSourceProvider:Ljavax/inject/Provider;

    .line 36
    return-void
.end method

.method public static create$51666RRD5TGMSP3IDTKM8BR3C5MMASJ15TNMSP9FEOP2UQBDC5JMARB1DPGMEPBDCLN78BQCC5P6EPA9DLGMEPAICLGM8PBI9LNM8TBCCKTKOQJ1EPGNGBR9DPL6AORK5T874RRMD5I6ASHR9HL62TJ1F0NMIRJACLHN8BQGE9NNCQB4CLP3MJ3AC5R62U1FD5N6KPB3EGNL0SJFEPKM8PBI7CKKOP31CTJMASHFD5N78PBIDPGMOBQ6C5HN8RRIF4TG____(Lcom/android/camera/one/v2/imagemanagement/LargeImageReaderModule;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Ljavax/inject/Provider;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/camera/one/v2/imagemanagement/LargeImageReaderModule;",
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
    .line 51
    new-instance v0, Lcom/android/camera/one/v2/imagemanagement/LargeImageReaderModule_ProvideSharedImageReaderFactory;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/android/camera/one/v2/imagemanagement/LargeImageReaderModule_ProvideSharedImageReaderFactory;-><init>(Lcom/android/camera/one/v2/imagemanagement/LargeImageReaderModule;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)V

    return-object v0
.end method


# virtual methods
.method public final synthetic get()Ljava/lang/Object;
    .locals 4

    .prologue
    .line 12
    .line 1040
    iget-object v3, p0, Lcom/android/camera/one/v2/imagemanagement/LargeImageReaderModule_ProvideSharedImageReaderFactory;->module:Lcom/android/camera/one/v2/imagemanagement/LargeImageReaderModule;

    iget-object v0, p0, Lcom/android/camera/one/v2/imagemanagement/LargeImageReaderModule_ProvideSharedImageReaderFactory;->lifetimeProvider:Ljavax/inject/Provider;

    .line 1042
    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/apps/camera/async/Lifetime;

    iget-object v1, p0, Lcom/android/camera/one/v2/imagemanagement/LargeImageReaderModule_ProvideSharedImageReaderFactory;->pictureConfigurationProvider:Ljavax/inject/Provider;

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/camera/one/v2/util/PictureConfiguration;

    iget-object v2, p0, Lcom/android/camera/one/v2/imagemanagement/LargeImageReaderModule_ProvideSharedImageReaderFactory;->imageSourceProvider:Ljavax/inject/Provider;

    invoke-interface {v2}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/camera/one/v2/imagemanagement/imagesource/ImageSourceProvider;

    .line 1041
    invoke-virtual {v3, v0, v1, v2}, Lcom/android/camera/one/v2/imagemanagement/LargeImageReaderModule;->provideSharedImageReader(Lcom/google/android/apps/camera/async/Lifetime;Lcom/android/camera/one/v2/util/PictureConfiguration;Lcom/android/camera/one/v2/imagemanagement/imagesource/ImageSourceProvider;)Lcom/android/camera/one/v2/imagemanagement/imagesource/ImageSourceComponent;

    move-result-object v0

    const-string v1, "Cannot return null from a non-@Nullable @Provides method"

    .line 1040
    invoke-static {v0, v1}, Landroid/support/v4/widget/DrawerLayout$DrawerLayoutCompatImplApi21;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/one/v2/imagemanagement/imagesource/ImageSourceComponent;

    .line 12
    return-object v0
.end method
