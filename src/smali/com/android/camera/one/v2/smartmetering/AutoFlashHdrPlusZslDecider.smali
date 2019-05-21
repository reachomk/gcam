.class public Lcom/android/camera/one/v2/smartmetering/AutoFlashHdrPlusZslDecider;
.super Ljava/lang/Object;
.source "AutoFlashHdrPlusZslDecider.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 1007
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static provideAutoFlashHdrPlusDecision$51666RRD5TGMSP3IDTKM8BR3C5MMASJ15TNMSP9F9TN6AGR1DLIN4OA3D1GN4OB3EHIN4QBJEHKM6SPR9HHMUR9FCTNMUPRCCKNM2RJ4E9NMIP1FC5O70SPFCDGMQPBIC4NM2SRPDPHIUJR2EDIN4TJ1C9M6AEQCCDNMQBR7DTNMER355TGMSP3IDTKM8BR1E1O76BR3C5MMASJ15TGN6UBECCNKUOJJCLP7COB2DHIJMJ33DTMIUPRFDTJMOP9FC5N68SJFD5I2UOBGE1PIUOR1DLIN4O9FC5PNIRJ35T7M4SR5E9R62OJCCKTKOORFDKNMERRFCTM6ABR1DPI74RR9CGNM2S3GECNM6OBDCLP62BR1EDSMSOPF9TH76PBIEPGM4R357D666RRD5TGMSP3IDTKM8BR3C5MMASJ15TNMSP9FEOP2USRDC5P78RB5EHIN4QBECSNL6QBDE1M6AJB5EHIN4QBECT96ASRGDTN76PACD5PN8PBECLP3MJ33DTMIUOBECHP6UQB45THM2RB5E9GIURRECKNNCCHFC5QN8RR6DTHNASPF85IK6RREEHP6UR3CCLP3MAACCDNMQBR7DTNMER355TGMSP3IDTKM8BR1E1O76BR3C5MMASJ15TGN6UBECCNKUOJJCLP7COB2DHIJM___(Lcom/android/camera/one/OneCameraCharacteristics;Lcom/google/android/apps/camera/async/Observable;Lcom/google/android/apps/camera/async/Observable;Lcom/google/android/apps/camera/async/Observable;Lcom/google/android/apps/camera/async/Observable;Lcom/android/camera/one/v2/smartmetering/SimpleMeteringResponseListener;Lcom/google/android/libraries/smartburst/buffers/serialization/legacy/FeatureTableSerializer;)Lcom/google/android/apps/camera/async/Observable;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/camera/one/OneCameraCharacteristics;",
            "Lcom/google/android/apps/camera/async/Observable",
            "<",
            "Lcom/android/camera/one/v2/OneCameraSettingsModule$Flash;",
            ">;",
            "Lcom/google/android/apps/camera/async/Observable",
            "<",
            "Lcom/android/camera/one/v2/OneCameraSettingsModule$HdrPlusMode;",
            ">;",
            "Lcom/google/android/apps/camera/async/Observable",
            "<",
            "Ljava/lang/Boolean;",
            ">;",
            "Lcom/google/android/apps/camera/async/Observable",
            "<",
            "Ljava/lang/Boolean;",
            ">;",
            "Lcom/android/camera/one/v2/smartmetering/SimpleMeteringResponseListener;",
            "Lcom/google/android/libraries/smartburst/buffers/serialization/legacy/FeatureTableSerializer;",
            ")",
            "Lcom/google/android/apps/camera/async/Observable",
            "<",
            "Lcom/android/camera/one/v2/smartmetering/AutoFlashHdrPlusDecision;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1105
    new-instance v0, Lcom/android/camera/one/v2/smartmetering/AutoFlashHdrPlusSimpleMeteringProcessor;

    .line 1106
    invoke-interface {p0}, Lcom/android/camera/one/OneCameraCharacteristics;->isFlashSupported()Z

    move-result v1

    const/4 v2, 0x0

    .line 1112
    invoke-virtual {p5}, Lcom/android/camera/one/v2/smartmetering/SimpleMeteringResponseListener;->getBrightnessObservable()Lcom/google/android/apps/camera/async/Observable;

    move-result-object v7

    .line 1113
    invoke-virtual {p6}, Lcom/google/android/libraries/smartburst/buffers/serialization/legacy/FeatureTableSerializer;->getEvCompProperty$50KKOORFDKNMERRFCTM6ABR1DPI74RR9CGNM2S3GECNM6OBDCLP62BR1EDSMSOPFA1P6US35E9Q7IEO_()Lcom/google/android/apps/camera/async/Observable;

    move-result-object v8

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    invoke-direct/range {v0 .. v8}, Lcom/android/camera/one/v2/smartmetering/AutoFlashHdrPlusSimpleMeteringProcessor;-><init>(ZZLcom/google/android/apps/camera/async/Observable;Lcom/google/android/apps/camera/async/Observable;Lcom/google/android/apps/camera/async/Observable;Lcom/google/android/apps/camera/async/Observable;Lcom/google/android/apps/camera/async/Observable;Lcom/google/android/apps/camera/async/Observable;)V

    .line 1105
    return-object v0
.end method

.method public static provideAutoFlashHdrPlusNotification(Lcom/google/android/apps/camera/async/Observable;)Lcom/google/android/apps/camera/async/Observable;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/apps/camera/async/Observable",
            "<",
            "Lcom/android/camera/one/v2/smartmetering/AutoFlashHdrPlusDecision;",
            ">;)",
            "Lcom/google/android/apps/camera/async/Observable",
            "<",
            "Lcom/android/camera/one/v2/smartmetering/AutoFlashHdrPlusDecision;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1156
    return-object p0
.end method

.method public static provideFilmstripBottomPanelController(Lcom/android/camera/filmstrip/FilmstripBottomPanelControllerImpl;)Lcom/android/camera/filmstrip/FilmstripBottomPanelController;
    .locals 0

    .prologue
    .line 1013
    return-object p0
.end method

.method public static provideMeteringData(Lcom/android/camera/one/v2/smartmetering/SimpleMeteringResponseListener;)Lcom/google/android/apps/camera/async/Observable;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/camera/one/v2/smartmetering/SimpleMeteringResponseListener;",
            ")",
            "Lcom/google/android/apps/camera/async/Observable",
            "<",
            "Lcom/google/common/logging/nano/eventprotos$MeteringData;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1120
    .line 1121
    invoke-virtual {p0}, Lcom/android/camera/one/v2/smartmetering/SimpleMeteringResponseListener;->getBrightnessObservable()Lcom/google/android/apps/camera/async/Observable;

    move-result-object v0

    new-instance v1, Lcom/android/camera/one/v2/smartmetering/SmartMeteringModules$HdrPlusSimpleMeteringModule$1;

    invoke-direct {v1}, Lcom/android/camera/one/v2/smartmetering/SmartMeteringModules$HdrPlusSimpleMeteringModule$1;-><init>()V

    .line 1120
    invoke-static {v0, v1}, Lcom/google/android/apps/camera/async/Observables;->transform(Lcom/google/android/apps/camera/async/Observable;Lcom/google/common/base/Function;)Lcom/google/android/apps/camera/async/Observable;

    move-result-object v0

    return-object v0
.end method

.method public static provideMeteringMetric(Lcom/android/camera/one/OneCameraCharacteristics;)Lcom/android/camera/one/v2/smartmetering/MeteringMetric;
    .locals 2

    .prologue
    .line 1148
    new-instance v1, Lcom/android/camera/one/v2/smartmetering/BrightnessMeteringMetric;

    sget-object v0, Landroid/hardware/camera2/CameraCharacteristics;->SENSOR_INFO_WHITE_LEVEL:Landroid/hardware/camera2/CameraCharacteristics$Key;

    .line 1149
    invoke-interface {p0, v0}, Lcom/android/camera/one/OneCameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-direct {v1, v0}, Lcom/android/camera/one/v2/smartmetering/BrightnessMeteringMetric;-><init>(I)V

    .line 1148
    return-object v1
.end method

.method public static provideSimpleMeteringResponseListener(Lcom/android/camera/one/v2/smartmetering/SimpleMeteringResponseListener;)Lcom/android/camera/one/v2/common/RequestTransformer;
    .locals 1

    .prologue
    .line 1141
    invoke-static {p0}, Lcom/android/camera/one/v2/common/JpegThumbnailParametersNull;->forListener(Lcom/android/camera/one/v2/core/ResponseListener;)Lcom/android/camera/one/v2/common/RequestTransformer;

    move-result-object v0

    return-object v0
.end method
