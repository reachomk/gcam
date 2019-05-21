.class public final Lcom/android/camera/camcorder/CamcorderModule_ProvideCameraHandlerThreadFactory;
.super Ljava/lang/Object;
.source "CamcorderModule_ProvideCameraHandlerThreadFactory.java"

# interfaces
.implements Ljavax/inject/Provider;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljavax/inject/Provider;"
    }
.end annotation


# static fields
.field private static final INSTANCE:Lcom/android/camera/camcorder/CamcorderModule_ProvideCameraHandlerThreadFactory;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 11
    new-instance v0, Lcom/android/camera/camcorder/CamcorderModule_ProvideCameraHandlerThreadFactory;

    invoke-direct {v0}, Lcom/android/camera/camcorder/CamcorderModule_ProvideCameraHandlerThreadFactory;-><init>()V

    sput-object v0, Lcom/android/camera/camcorder/CamcorderModule_ProvideCameraHandlerThreadFactory;->INSTANCE:Lcom/android/camera/camcorder/CamcorderModule_ProvideCameraHandlerThreadFactory;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static create$50KKOP31CTJMASHFD5N78PBIDPGMOBQ6C5HN8RRIF4TG____()Ljavax/inject/Provider;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljavax/inject/Provider;"
        }
    .end annotation

    .prologue
    .line 22
    sget-object v0, Lcom/android/camera/camcorder/CamcorderModule_ProvideCameraHandlerThreadFactory;->INSTANCE:Lcom/android/camera/camcorder/CamcorderModule_ProvideCameraHandlerThreadFactory;

    return-object v0
.end method


# virtual methods
.method public final synthetic get()Ljava/lang/Object;
    .locals 2

    .prologue
    .line 1017
    invoke-static {}, Landroid/support/v4/content/res/ConfigurationHelper$ConfigurationHelperImpl;->provideCameraHandlerThread()Landroid/os/HandlerThread;

    move-result-object v0

    const-string v1, "Cannot return null from a non-@Nullable @Provides method"

    .line 1016
    invoke-static {v0, v1}, Landroid/support/v4/widget/DrawerLayout$DrawerLayoutCompatImplApi21;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/HandlerThread;

    .line 8
    return-object v0
.end method
