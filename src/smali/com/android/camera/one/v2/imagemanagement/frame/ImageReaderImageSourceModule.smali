.class public Lcom/android/camera/one/v2/imagemanagement/frame/ImageReaderImageSourceModule;
.super Ljava/lang/Object;
.source "ImageReaderImageSourceModule.java"


# instance fields
.field private final trackInFlightImages:Z


# direct methods
.method private constructor <init>(Z)V
    .locals 1

    .prologue
    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/camera/one/v2/imagemanagement/frame/ImageReaderImageSourceModule;->trackInFlightImages:Z

    .line 44
    return-void
.end method

.method public static trackInFlightImageSource()Lcom/android/camera/one/v2/imagemanagement/frame/ImageReaderImageSourceModule;
    .locals 2

    .prologue
    .line 39
    new-instance v0, Lcom/android/camera/one/v2/imagemanagement/frame/ImageReaderImageSourceModule;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/android/camera/one/v2/imagemanagement/frame/ImageReaderImageSourceModule;-><init>(Z)V

    return-object v0
.end method


# virtual methods
.method public final provideImageSource$5166KOBMC5S2UQBED9IM6T1FA1P6UTJ9CHIN4EQCD9GNCOBO5TKMSQJ5CDQ2UK3IDTR6IP35E8TKOORFDKNM2RJ4E9NMIP1FCDGMQPBIC4NMURJ55TR34BR9DLGMEPBDC5N62PR5DLIMST1FEHKM6QR5EHO6URRC5TA6IORBCLQ50RRFDGTIIJ33DTMIUOBECHP6UQB45THM2RB5E9GIURRECKNNCCHFD5MM2PR5DLGMSOB7CLMMARJK5TJ74OBDCKNKCSJ1DLIKQOBEC5JMASH495MM2PR5ADNNASJ3CKTG____(Ljavax/inject/Provider;Ljavax/inject/Provider;Lcom/android/camera/one/v2/imagemanagement/ticketpool/TicketProvider;)Lcom/android/camera/one/v2/imagemanagement/frame/FrameManager$ImageSource;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider",
            "<",
            "Lcom/android/camera/one/v2/imagemanagement/frame/ImageReaderImageSource;",
            ">;",
            "Ljavax/inject/Provider",
            "<",
            "Lcom/android/camera/one/v2/imagemanagement/frame/ImageReaderImageSource2;",
            ">;",
            "Lcom/android/camera/one/v2/imagemanagement/ticketpool/TicketProvider;",
            ")",
            "Lcom/android/camera/one/v2/imagemanagement/frame/FrameManager$ImageSource;"
        }
    .end annotation

    .prologue
    .line 53
    iget-boolean v0, p0, Lcom/android/camera/one/v2/imagemanagement/frame/ImageReaderImageSourceModule;->trackInFlightImages:Z

    if-eqz v0, :cond_0

    .line 54
    invoke-interface {p2}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/one/v2/imagemanagement/frame/FrameManager$ImageSource;

    .line 64
    :goto_0
    new-instance v1, Lcom/android/camera/one/v2/imagemanagement/frame/AvailabilityTracker$AvailabilityTrackingImageSource;

    invoke-direct {v1, v0, p3}, Lcom/android/camera/one/v2/imagemanagement/frame/AvailabilityTracker$AvailabilityTrackingImageSource;-><init>(Lcom/android/camera/one/v2/imagemanagement/frame/FrameManager$ImageSource;Lcom/android/camera/one/v2/imagemanagement/ticketpool/TicketProvider;)V

    return-object v1

    .line 56
    :cond_0
    invoke-interface {p1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/one/v2/imagemanagement/frame/FrameManager$ImageSource;

    goto :goto_0
.end method
