.class public final Lcom/android/camera/one/v2/imagemanagement/frame/ImageReaderImageSourceModule_ProvideImageSourceFactory;
.super Ljava/lang/Object;
.source "ImageReaderImageSourceModule_ProvideImageSourceFactory.java"

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
.field private final globalTicketPoolProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<",
            "Lcom/android/camera/one/v2/imagemanagement/ticketpool/TicketProvider;",
            ">;"
        }
    .end annotation
.end field

.field private final inFlightTrackingImageSourceProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<",
            "Lcom/android/camera/one/v2/imagemanagement/frame/ImageReaderImageSource2;",
            ">;"
        }
    .end annotation
.end field

.field private final module:Lcom/android/camera/one/v2/imagemanagement/frame/ImageReaderImageSourceModule;

.field private final repeatingImageSourceProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<",
            "Lcom/android/camera/one/v2/imagemanagement/frame/ImageReaderImageSource;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/android/camera/one/v2/imagemanagement/frame/ImageReaderImageSourceModule;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/camera/one/v2/imagemanagement/frame/ImageReaderImageSourceModule;",
            "Ljavax/inject/Provider",
            "<",
            "Lcom/android/camera/one/v2/imagemanagement/frame/ImageReaderImageSource;",
            ">;",
            "Ljavax/inject/Provider",
            "<",
            "Lcom/android/camera/one/v2/imagemanagement/frame/ImageReaderImageSource2;",
            ">;",
            "Ljavax/inject/Provider",
            "<",
            "Lcom/android/camera/one/v2/imagemanagement/ticketpool/TicketProvider;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    iput-object p1, p0, Lcom/android/camera/one/v2/imagemanagement/frame/ImageReaderImageSourceModule_ProvideImageSourceFactory;->module:Lcom/android/camera/one/v2/imagemanagement/frame/ImageReaderImageSourceModule;

    .line 28
    iput-object p2, p0, Lcom/android/camera/one/v2/imagemanagement/frame/ImageReaderImageSourceModule_ProvideImageSourceFactory;->repeatingImageSourceProvider:Ljavax/inject/Provider;

    .line 30
    iput-object p3, p0, Lcom/android/camera/one/v2/imagemanagement/frame/ImageReaderImageSourceModule_ProvideImageSourceFactory;->inFlightTrackingImageSourceProvider:Ljavax/inject/Provider;

    .line 32
    iput-object p4, p0, Lcom/android/camera/one/v2/imagemanagement/frame/ImageReaderImageSourceModule_ProvideImageSourceFactory;->globalTicketPoolProvider:Ljavax/inject/Provider;

    .line 33
    return-void
.end method


# virtual methods
.method public final synthetic get()Ljava/lang/Object;
    .locals 4

    .prologue
    .line 9
    .line 1037
    iget-object v1, p0, Lcom/android/camera/one/v2/imagemanagement/frame/ImageReaderImageSourceModule_ProvideImageSourceFactory;->module:Lcom/android/camera/one/v2/imagemanagement/frame/ImageReaderImageSourceModule;

    iget-object v2, p0, Lcom/android/camera/one/v2/imagemanagement/frame/ImageReaderImageSourceModule_ProvideImageSourceFactory;->repeatingImageSourceProvider:Ljavax/inject/Provider;

    iget-object v3, p0, Lcom/android/camera/one/v2/imagemanagement/frame/ImageReaderImageSourceModule_ProvideImageSourceFactory;->inFlightTrackingImageSourceProvider:Ljavax/inject/Provider;

    iget-object v0, p0, Lcom/android/camera/one/v2/imagemanagement/frame/ImageReaderImageSourceModule_ProvideImageSourceFactory;->globalTicketPoolProvider:Ljavax/inject/Provider;

    .line 1041
    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/one/v2/imagemanagement/ticketpool/TicketProvider;

    .line 1038
    invoke-virtual {v1, v2, v3, v0}, Lcom/android/camera/one/v2/imagemanagement/frame/ImageReaderImageSourceModule;->provideImageSource$5166KOBMC5S2UQBED9IM6T1FA1P6UTJ9CHIN4EQCD9GNCOBO5TKMSQJ5CDQ2UK3IDTR6IP35E8TKOORFDKNM2RJ4E9NMIP1FCDGMQPBIC4NMURJ55TR34BR9DLGMEPBDC5N62PR5DLIMST1FEHKM6QR5EHO6URRC5TA6IORBCLQ50RRFDGTIIJ33DTMIUOBECHP6UQB45THM2RB5E9GIURRECKNNCCHFD5MM2PR5DLGMSOB7CLMMARJK5TJ74OBDCKNKCSJ1DLIKQOBEC5JMASH495MM2PR5ADNNASJ3CKTG____(Ljavax/inject/Provider;Ljavax/inject/Provider;Lcom/android/camera/one/v2/imagemanagement/ticketpool/TicketProvider;)Lcom/android/camera/one/v2/imagemanagement/frame/FrameManager$ImageSource;

    move-result-object v0

    const-string v1, "Cannot return null from a non-@Nullable @Provides method"

    .line 1037
    invoke-static {v0, v1}, Landroid/support/v4/widget/DrawerLayout$DrawerLayoutCompatImplApi21;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/one/v2/imagemanagement/frame/FrameManager$ImageSource;

    .line 9
    return-object v0
.end method
