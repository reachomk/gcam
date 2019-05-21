.class public final Lcom/android/camera/ui/viewfinder/ViewfinderModule_ProvideViewfinderSizeSelectorFactory;
.super Ljava/lang/Object;
.source "ViewfinderModule_ProvideViewfinderSizeSelectorFactory.java"

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
.field private final androidServicesProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<",
            "Lcom/google/android/apps/camera/inject/app/AndroidServices;",
            ">;"
        }
    .end annotation
.end field

.field private final gservicesHelperProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<",
            "Lcom/android/camera/one/v2/imagesaver/selection/ImageSelectorModule;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljavax/inject/Provider;Ljavax/inject/Provider;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider",
            "<",
            "Lcom/google/android/apps/camera/inject/app/AndroidServices;",
            ">;",
            "Ljavax/inject/Provider",
            "<",
            "Lcom/android/camera/one/v2/imagesaver/selection/ImageSelectorModule;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    iput-object p1, p0, Lcom/android/camera/ui/viewfinder/ViewfinderModule_ProvideViewfinderSizeSelectorFactory;->androidServicesProvider:Ljavax/inject/Provider;

    .line 23
    iput-object p2, p0, Lcom/android/camera/ui/viewfinder/ViewfinderModule_ProvideViewfinderSizeSelectorFactory;->gservicesHelperProvider:Ljavax/inject/Provider;

    .line 24
    return-void
.end method


# virtual methods
.method public final synthetic get()Ljava/lang/Object;
    .locals 2

    .prologue
    .line 10
    .line 1028
    iget-object v0, p0, Lcom/android/camera/ui/viewfinder/ViewfinderModule_ProvideViewfinderSizeSelectorFactory;->androidServicesProvider:Ljavax/inject/Provider;

    .line 1030
    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/apps/camera/inject/app/AndroidServices;

    iget-object v1, p0, Lcom/android/camera/ui/viewfinder/ViewfinderModule_ProvideViewfinderSizeSelectorFactory;->gservicesHelperProvider:Ljavax/inject/Provider;

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/camera/one/v2/imagesaver/selection/ImageSelectorModule;

    .line 1029
    invoke-static {v0, v1}, Landroid/support/v4/content/res/ConfigurationHelper$ConfigurationHelperImpl;->provideViewfinderSizeSelector$51666RRD5TJMURR7DHIIUOBECHP6UQB45TGN0S3J5THM2RB5E9GIUQBED9IM6T1FC5O70BQ1DPI74RR9CH9MASJMD5HMASPR9HHMUR9FC5N68SJFD5I2UOR1DLIN4O9FCDNMSPJ9CSNKESR5E9R6IOR5ED46AR3GCLP3MAACCDNMQBR1DPI74RR9CGNM6OBDCLP62BRLD4NNCQB5ETJ6IRJ4CLP2ULJ9CLRMCQBECHIN4KR9F9IL6PBCCLHN8RRI7C______(Lcom/google/android/apps/camera/inject/app/AndroidServices;Lcom/android/camera/one/v2/imagesaver/selection/ImageSelectorModule;)Lcom/android/camera/ui/viewfinder/ViewfinderSizeSelector;

    move-result-object v0

    const-string v1, "Cannot return null from a non-@Nullable @Provides method"

    .line 1028
    invoke-static {v0, v1}, Landroid/support/v4/widget/DrawerLayout$DrawerLayoutCompatImplApi21;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/ui/viewfinder/ViewfinderSizeSelector;

    .line 10
    return-object v0
.end method
