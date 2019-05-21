.class final Lcom/android/camera/module/video2/VideoModeModule$2;
.super Ljava/lang/Object;
.source "VideoModeModule.java"

# interfaces
.implements Lcom/android/camera/module/video2/VideoBottomBarUISpecProviderFactory;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/module/video2/VideoModeModule;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 152
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final getProvider$51666RRD5TGMSP3IDTKM8BR3C5MMASJ15TMMUP3LDHIIUGJFEHQ6URA2C5P5AIA3C5M6OOJ1CDLJMJ33DTMIUOBECHP6UQB45THM2RB5E9GIUOR1DLHMUSJ4CLP2UGR1DLHMUSJ4CLP46OBGEHQN4PAIC5Q6AEQCCDNMQBR1DPI74RR9CGNM6OBDCLP62BR3C5MM6RRICHIN4BQ3C5MM6RRICHIN4GR8C5P62ORKCLP6ISRKD5HN6EQCCDNMQBR7DTNMER355TGMSP3IDTKM8BR1E1O76BR3C5MMASJ15THM2RB3DTP68PBI5T1M2RB3DTP68PBIAPKM8PBFA9IN6RRCELQ6IRRE7D666RRD5TGMSP3IDTKM8BR3C5MMASJ15TMMUP3LDHIIUTJ9CHIMUCHFAPKM8PBF69462SJ4ETGN4PAJE1IM6EQCCDNMQBR1DPI74RR9CGNM6OBDCLP62BRDDTI7AR355TR6IP35DSP2ULJ9CHIMUCIJCLQ78QBECTPJMMH99HHMUR9FC5N68SJFD5I2UOR1DLIN4O9FELKIUGJFEHQ6URA2C5P5AIAJE1IM6K3IDTR6IP35E8TG____(Lcom/android/camera/module/BottomBarUICallback;Lcom/android/camera/camcorder/CamcorderCaptureRate;Lcom/android/camera/camcorder/CamcorderCharacteristics;Lcom/google/android/apps/camera/camcorder/CamcorderVideoResolution;Lcom/google/android/apps/camera/inject/app/SystemServicesModule;Lcom/android/camera/module/video2/Video2Settings;Z)Lcom/android/camera/ui/BottomBarUISpecProvider;
    .locals 7

    .prologue
    .line 162
    new-instance v0, Lcom/android/camera/module/video2/Video2HfrBottomBarUISpecProvider;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    invoke-direct/range {v0 .. v6}, Lcom/android/camera/module/video2/Video2HfrBottomBarUISpecProvider;-><init>(Lcom/android/camera/module/BottomBarUICallback;Lcom/android/camera/camcorder/CamcorderCaptureRate;Lcom/android/camera/camcorder/CamcorderCharacteristics;Lcom/google/android/apps/camera/camcorder/CamcorderVideoResolution;Lcom/google/android/apps/camera/inject/app/SystemServicesModule;Lcom/android/camera/module/video2/Video2Settings;)V

    return-object v0
.end method
