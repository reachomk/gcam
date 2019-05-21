.class public Lcom/android/camera/one/v2/imagesaver/trace/TraceModule;
.super Ljava/lang/Object;
.source "TraceModule.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 1014
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static provideGservicesHelper$51662RJ4E9NMIP1FCDNMST35DPQ2UGRFDPQ6ARJKA9IN6RRCEPIN4EQCCDNMQBR1DPI74RR9CGNM6OBDCLP62BRLEHKMOBQ1E1KKGPBCE1IN4EP99HHMUR9FC5N68SJFD5I2UOR1DLIN4O9FCDNMSPJ9CSNKESR5E9R6IOR5ED46AR3GCLP3M___(Landroid/content/ContentResolver;Lcom/android/camera/util/ApiHelper;)Lcom/android/camera/one/v2/imagesaver/selection/ImageSelectorModule;
    .locals 1

    .prologue
    .line 1019
    new-instance v0, Lcom/android/camera/one/v2/imagesaver/selection/ImageSelectorModule;

    invoke-direct {v0, p0, p1}, Lcom/android/camera/one/v2/imagesaver/selection/ImageSelectorModule;-><init>(Landroid/content/ContentResolver;Lcom/android/camera/util/ApiHelper;)V

    return-object v0
.end method
