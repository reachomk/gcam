.class public final Lcom/android/camera/one/v2/imagemanagement/imagesource/ImageSourceConfig;
.super Ljava/lang/Object;
.source "ImageSourceConfig.java"


# instance fields
.field private final lifetime:Lcom/google/android/apps/camera/async/Lifetime;

.field private final sharedTicketPool$9HHMUR9FC5N68SJFD5I2UOR1DLIN4O9FDTN6ABRM68NMIRB1CTIMQOBEC5JMARB5DPQ2UT39CDLMAT3GDTNMOBQKD5HMMPBKA1NMUR1R:Lcom/android/camera/one/v2/imagemanagement/ticketpool/TicketProvider;


# direct methods
.method constructor <init>(Lcom/google/android/apps/camera/async/Lifetime;Lcom/android/camera/one/v2/imagemanagement/ticketpool/TicketProvider;)V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    iput-object p1, p0, Lcom/android/camera/one/v2/imagemanagement/imagesource/ImageSourceConfig;->lifetime:Lcom/google/android/apps/camera/async/Lifetime;

    .line 22
    iput-object p2, p0, Lcom/android/camera/one/v2/imagemanagement/imagesource/ImageSourceConfig;->sharedTicketPool$9HHMUR9FC5N68SJFD5I2UOR1DLIN4O9FDTN6ABRM68NMIRB1CTIMQOBEC5JMARB5DPQ2UT39CDLMAT3GDTNMOBQKD5HMMPBKA1NMUR1R:Lcom/android/camera/one/v2/imagemanagement/ticketpool/TicketProvider;

    .line 23
    return-void
.end method


# virtual methods
.method public final provideImageSourceLifetime()Lcom/google/android/apps/camera/async/Lifetime;
    .locals 1

    .prologue
    .line 28
    iget-object v0, p0, Lcom/android/camera/one/v2/imagemanagement/imagesource/ImageSourceConfig;->lifetime:Lcom/google/android/apps/camera/async/Lifetime;

    return-object v0
.end method

.method public final provideSharedImageSourceTicketPool$50KKOORFDKNM2RJ4E9NMIP1FCDGMQPBIC4NMURJ55TR34BR9DLGMEPBDC5N62PR5DLIMST1FEHKM6QR5EHO6URRC5TA6IORBCLQ50RRFDGTG____()Lcom/android/camera/one/v2/imagemanagement/ticketpool/TicketProvider;
    .locals 1

    .prologue
    .line 33
    iget-object v0, p0, Lcom/android/camera/one/v2/imagemanagement/imagesource/ImageSourceConfig;->sharedTicketPool$9HHMUR9FC5N68SJFD5I2UOR1DLIN4O9FDTN6ABRM68NMIRB1CTIMQOBEC5JMARB5DPQ2UT39CDLMAT3GDTNMOBQKD5HMMPBKA1NMUR1R:Lcom/android/camera/one/v2/imagemanagement/ticketpool/TicketProvider;

    return-object v0
.end method
