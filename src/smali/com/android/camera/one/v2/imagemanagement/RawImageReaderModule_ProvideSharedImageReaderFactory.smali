.class public final Lcom/android/camera/one/v2/imagemanagement/RawImageReaderModule_ProvideSharedImageReaderFactory;
.super Ljava/lang/Object;
.source "RawImageReaderModule_ProvideSharedImageReaderFactory.java"

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

.field private final module:Lcom/android/camera/one/v2/imagemanagement/RawImageReaderModule;


# direct methods
.method private constructor <init>(Lcom/android/camera/one/v2/imagemanagement/RawImageReaderModule;Ljavax/inject/Provider;Ljavax/inject/Provider;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/camera/one/v2/imagemanagement/RawImageReaderModule;",
            "Ljavax/inject/Provider",
            "<",
            "Lcom/google/android/apps/camera/async/Lifetime;",
            ">;",
            "Ljavax/inject/Provider",
            "<",
            "Lcom/android/camera/one/v2/imagemanagement/imagesource/ImageSourceProvider;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    iput-object p1, p0, Lcom/android/camera/one/v2/imagemanagement/RawImageReaderModule_ProvideSharedImageReaderFactory;->module:Lcom/android/camera/one/v2/imagemanagement/RawImageReaderModule;

    .line 27
    iput-object p2, p0, Lcom/android/camera/one/v2/imagemanagement/RawImageReaderModule_ProvideSharedImageReaderFactory;->lifetimeProvider:Ljavax/inject/Provider;

    .line 29
    iput-object p3, p0, Lcom/android/camera/one/v2/imagemanagement/RawImageReaderModule_ProvideSharedImageReaderFactory;->imageSourceProvider:Ljavax/inject/Provider;

    .line 30
    return-void
.end method

.method public static create$51666RRD5TGMSP3IDTKM8BR3C5MMASJ15TNMSP9FEOP2UQBDC5JMARB1DPGMEPBDCLN78BQIC5RKIRB1CTIL4PB1CHIN4JBFCHQMOP9R9HL62TJ1F0NMIRJACLHN8BQGE9NNCQB4CLP3MJ3AC5R62U1FD5N6KPB3EGNL0SJFEPKM8PBI7CKKOP31CTJMASHFD5N78PBIDPGMOBQ6C5HN8RRIF4TG____(Lcom/android/camera/one/v2/imagemanagement/RawImageReaderModule;Ljavax/inject/Provider;Ljavax/inject/Provider;)Ljavax/inject/Provider;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/camera/one/v2/imagemanagement/RawImageReaderModule;",
            "Ljavax/inject/Provider",
            "<",
            "Lcom/google/android/apps/camera/async/Lifetime;",
            ">;",
            "Ljavax/inject/Provider",
            "<",
            "Lcom/android/camera/one/v2/imagemanagement/imagesource/ImageSourceProvider;",
            ">;)",
            "Ljavax/inject/Provider;"
        }
    .end annotation

    .prologue
    .line 43
    new-instance v0, Lcom/android/camera/one/v2/imagemanagement/RawImageReaderModule_ProvideSharedImageReaderFactory;

    invoke-direct {v0, p0, p1, p2}, Lcom/android/camera/one/v2/imagemanagement/RawImageReaderModule_ProvideSharedImageReaderFactory;-><init>(Lcom/android/camera/one/v2/imagemanagement/RawImageReaderModule;Ljavax/inject/Provider;Ljavax/inject/Provider;)V

    return-object v0
.end method


# virtual methods
.method public final synthetic get()Ljava/lang/Object;
    .locals 3

    .prologue
    .line 11
    .line 1034
    iget-object v2, p0, Lcom/android/camera/one/v2/imagemanagement/RawImageReaderModule_ProvideSharedImageReaderFactory;->module:Lcom/android/camera/one/v2/imagemanagement/RawImageReaderModule;

    iget-object v0, p0, Lcom/android/camera/one/v2/imagemanagement/RawImageReaderModule_ProvideSharedImageReaderFactory;->lifetimeProvider:Ljavax/inject/Provider;

    .line 1035
    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/apps/camera/async/Lifetime;

    iget-object v1, p0, Lcom/android/camera/one/v2/imagemanagement/RawImageReaderModule_ProvideSharedImageReaderFactory;->imageSourceProvider:Ljavax/inject/Provider;

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/camera/one/v2/imagemanagement/imagesource/ImageSourceProvider;

    invoke-virtual {v2, v0, v1}, Lcom/android/camera/one/v2/imagemanagement/RawImageReaderModule;->provideSharedImageReader(Lcom/google/android/apps/camera/async/Lifetime;Lcom/android/camera/one/v2/imagemanagement/imagesource/ImageSourceProvider;)Lcom/android/camera/one/v2/imagemanagement/imagesource/ImageSourceComponent;

    move-result-object v0

    const-string v1, "Cannot return null from a non-@Nullable @Provides method"

    .line 1034
    invoke-static {v0, v1}, Landroid/support/v4/widget/DrawerLayout$DrawerLayoutCompatImplApi21;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/one/v2/imagemanagement/imagesource/ImageSourceComponent;

    .line 11
    return-object v0
.end method
