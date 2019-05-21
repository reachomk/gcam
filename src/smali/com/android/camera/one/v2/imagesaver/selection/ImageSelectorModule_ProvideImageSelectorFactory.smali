.class public final Lcom/android/camera/one/v2/imagesaver/selection/ImageSelectorModule_ProvideImageSelectorFactory;
.super Ljava/lang/Object;
.source "ImageSelectorModule_ProvideImageSelectorFactory.java"

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
.field private final collectorProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<",
            "Lcom/android/camera/one/v2/imagesaver/tuning/TuningDataCollector;",
            ">;"
        }
    .end annotation
.end field

.field private final implProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<",
            "Lcom/android/camera/one/v2/imagesaver/selection/ImageFilterImageSelector;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Ljavax/inject/Provider;Ljavax/inject/Provider;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider",
            "<",
            "Lcom/android/camera/one/v2/imagesaver/selection/ImageFilterImageSelector;",
            ">;",
            "Ljavax/inject/Provider",
            "<",
            "Lcom/android/camera/one/v2/imagesaver/tuning/TuningDataCollector;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    iput-object p1, p0, Lcom/android/camera/one/v2/imagesaver/selection/ImageSelectorModule_ProvideImageSelectorFactory;->implProvider:Ljavax/inject/Provider;

    .line 22
    iput-object p2, p0, Lcom/android/camera/one/v2/imagesaver/selection/ImageSelectorModule_ProvideImageSelectorFactory;->collectorProvider:Ljavax/inject/Provider;

    .line 23
    return-void
.end method

.method public static create$5166KOBMC5S2UQBED9IM6T1FA1P6UTJ9CHIN4EQCD9GNCOBO5TKMSQJ5CDQ2UK3IDTR6IP35E8TIIJ34C5JMEPBI5TKMST35E9N62R1F8PGM6T3FE9SJM___(Ljavax/inject/Provider;Ljavax/inject/Provider;)Ljavax/inject/Provider;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider",
            "<",
            "Lcom/android/camera/one/v2/imagesaver/selection/ImageFilterImageSelector;",
            ">;",
            "Ljavax/inject/Provider",
            "<",
            "Lcom/android/camera/one/v2/imagesaver/tuning/TuningDataCollector;",
            ">;)",
            "Ljavax/inject/Provider;"
        }
    .end annotation

    .prologue
    .line 35
    new-instance v0, Lcom/android/camera/one/v2/imagesaver/selection/ImageSelectorModule_ProvideImageSelectorFactory;

    invoke-direct {v0, p0, p1}, Lcom/android/camera/one/v2/imagesaver/selection/ImageSelectorModule_ProvideImageSelectorFactory;-><init>(Ljavax/inject/Provider;Ljavax/inject/Provider;)V

    return-object v0
.end method


# virtual methods
.method public final synthetic get()Ljava/lang/Object;
    .locals 3

    .prologue
    .line 9
    .line 1027
    iget-object v0, p0, Lcom/android/camera/one/v2/imagesaver/selection/ImageSelectorModule_ProvideImageSelectorFactory;->implProvider:Ljavax/inject/Provider;

    .line 1028
    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/one/v2/imagesaver/selection/ImageFilterImageSelector;

    iget-object v1, p0, Lcom/android/camera/one/v2/imagesaver/selection/ImageSelectorModule_ProvideImageSelectorFactory;->collectorProvider:Ljavax/inject/Provider;

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/camera/one/v2/imagesaver/tuning/TuningDataCollector;

    .line 2020
    new-instance v2, Lcom/android/camera/one/v2/imagesaver/selection/TuningImageSelector;

    invoke-direct {v2, v1, v0}, Lcom/android/camera/one/v2/imagesaver/selection/TuningImageSelector;-><init>(Lcom/android/camera/one/v2/imagesaver/tuning/TuningDataCollector;Lcom/android/camera/one/v2/imagesaver/selection/ImageSelector;)V

    .line 1028
    const-string v0, "Cannot return null from a non-@Nullable @Provides method"

    .line 1027
    invoke-static {v2, v0}, Landroid/support/v4/widget/DrawerLayout$DrawerLayoutCompatImplApi21;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/one/v2/imagesaver/selection/ImageSelector;

    .line 9
    return-object v0
.end method
