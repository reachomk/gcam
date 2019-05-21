.class final Lcom/google/android/apps/lightcycle/PanoramaModule$14;
.super Ljava/lang/Object;
.source "PanoramaModule.java"

# interfaces
.implements Lcom/android/camera/hardware/HardwareSpec;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/apps/lightcycle/PanoramaModule;->getHardwareSpec()Lcom/android/camera/hardware/HardwareSpec;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 850
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final isFlashSupported()Z
    .locals 1

    .prologue
    .line 868
    const/4 v0, 0x0

    return v0
.end method

.method public final isFrontCameraSupported()Z
    .locals 1

    .prologue
    .line 853
    const/4 v0, 0x0

    return v0
.end method

.method public final isHdrPlusSupported()Z
    .locals 1

    .prologue
    .line 863
    const/4 v0, 0x0

    return v0
.end method

.method public final isHdrSupported()Z
    .locals 1

    .prologue
    .line 858
    const/4 v0, 0x0

    return v0
.end method
