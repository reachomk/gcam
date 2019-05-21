.class public Lcom/google/android/libraries/smartburst/analysis/FeatureExtractionGraph$Builder;
.super Ljava/lang/Object;
.source "FeatureExtractionGraph.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/libraries/smartburst/analysis/FeatureExtractionGraph;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private final captureSettings:Lcom/android/camera/one/OneCameraCaptureSetting;


# direct methods
.method public constructor <init>(Lcom/android/camera/one/OneCameraCaptureSetting;)V
    .locals 0

    .prologue
    .line 1120
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1121
    iput-object p1, p0, Lcom/google/android/libraries/smartburst/analysis/FeatureExtractionGraph$Builder;->captureSettings:Lcom/android/camera/one/OneCameraCaptureSetting;

    .line 1122
    return-void
.end method

.method public static getFeatureExtractionGraphFromFactory(Lcom/google/android/libraries/smartburst/filterfw/MffContext;Lcom/google/android/libraries/smartburst/filterfw/VideoFrameProvider;Lcom/google/android/libraries/smartburst/filterfw/GraphFactory;)Lcom/google/android/libraries/smartburst/analysis/FeatureExtractionGraph;
    .locals 5

    .prologue
    .line 142
    invoke-interface {p2, p0}, Lcom/google/android/libraries/smartburst/filterfw/GraphFactory;->create(Lcom/google/android/libraries/smartburst/filterfw/MffContext;)Lcom/google/android/libraries/smartburst/filterfw/FilterGraph;

    move-result-object v1

    .line 143
    const-string v0, "videoProvider"

    invoke-virtual {v1, v0}, Lcom/google/android/libraries/smartburst/filterfw/FilterGraph;->getVariable(Ljava/lang/String;)Lcom/google/android/libraries/smartburst/filterfw/filterpacks/base/VariableSource;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/android/libraries/smartburst/filterfw/filterpacks/base/VariableSource;->setValue(Ljava/lang/Object;)V

    .line 144
    invoke-virtual {v1}, Lcom/google/android/libraries/smartburst/filterfw/FilterGraph;->getRunner()Lcom/google/android/libraries/smartburst/filterfw/GraphRunner;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/libraries/smartburst/filterfw/GraphRunner;->getFrameManager()Lcom/google/android/libraries/smartburst/filterfw/FrameManager;

    move-result-object v0

    const/high16 v2, 0x1800000

    invoke-virtual {v0, v2}, Lcom/google/android/libraries/smartburst/filterfw/FrameManager;->setCacheSize(I)V

    .line 147
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v2, "GraphFactory"

    const-string v3, ""

    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 148
    invoke-virtual {v1}, Lcom/google/android/libraries/smartburst/filterfw/FilterGraph;->getRunner()Lcom/google/android/libraries/smartburst/filterfw/GraphRunner;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/google/android/libraries/smartburst/filterfw/GraphRunner;->setThreadName(Ljava/lang/String;)V

    .line 151
    invoke-static {}, Lcom/google/common/collect/MapMakerInternalMap$DummyInternalEntry;->newArrayList()Ljava/util/ArrayList;

    move-result-object v2

    .line 152
    invoke-virtual {v1}, Lcom/google/android/libraries/smartburst/filterfw/FilterGraph;->getAllFilters()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/libraries/smartburst/filterfw/Filter;

    .line 153
    instance-of v4, v0, Lcom/google/android/libraries/smartburst/analysis/FeatureTableWriter;

    if-eqz v4, :cond_0

    .line 154
    check-cast v0, Lcom/google/android/libraries/smartburst/analysis/FeatureTableWriter;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 158
    :cond_1
    new-instance v0, Lcom/google/android/libraries/smartburst/analysis/FeatureExtractionGraph;

    invoke-direct {v0, v1, v2}, Lcom/google/android/libraries/smartburst/analysis/FeatureExtractionGraph;-><init>(Lcom/google/android/libraries/smartburst/filterfw/FilterGraph;Ljava/util/List;)V

    return-object v0
.end method

.method public static provideFaceDetectMode(Lcom/android/camera/one/OneCameraCharacteristics;)Lcom/google/android/apps/camera/async/Observable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/camera/one/OneCameraCharacteristics;",
            ")",
            "Lcom/google/android/apps/camera/async/Observable",
            "<",
            "Lcom/android/camera/one/OneCameraCharacteristics$FaceDetectMode;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1152
    invoke-interface {p0}, Lcom/android/camera/one/OneCameraCharacteristics;->getHighestFaceDetectMode()Lcom/android/camera/one/OneCameraCharacteristics$FaceDetectMode;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/apps/camera/async/Observables;->of(Ljava/lang/Object;)Lcom/google/android/apps/camera/async/Observable;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public provideFlashSetting(Lcom/android/camera/settings/Settings;Lcom/android/camera/one/OneCameraCharacteristics;)Lcom/google/android/apps/camera/async/Observable;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/camera/settings/Settings;",
            "Lcom/android/camera/one/OneCameraCharacteristics;",
            ")",
            "Lcom/google/android/apps/camera/async/Observable",
            "<",
            "Lcom/android/camera/one/v2/OneCameraSettingsModule$Flash;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1128
    new-instance v0, Lcom/android/camera/one/FlashSetting;

    iget-object v1, p0, Lcom/google/android/libraries/smartburst/analysis/FeatureExtractionGraph$Builder;->captureSettings:Lcom/android/camera/one/OneCameraCaptureSetting;

    .line 1130
    invoke-virtual {v1}, Lcom/android/camera/one/OneCameraCaptureSetting;->getCameraSettingScope()Ljava/lang/String;

    move-result-object v1

    const-string v2, "pref_camera_flashmode_key"

    sget-object v3, Lcom/android/camera/one/v2/OneCameraSettingsModule$Flash;->AUTO:Lcom/android/camera/one/v2/OneCameraSettingsModule$Flash;

    .line 1132
    invoke-virtual {v3}, Lcom/android/camera/one/v2/OneCameraSettingsModule$Flash;->encodeSettingsString()Ljava/lang/String;

    move-result-object v3

    .line 1129
    invoke-virtual {p1, v1, v2, v3}, Lcom/android/camera/settings/Settings;->ofScopedString$5166KOBMC4NMOOBECSNL6T3ID5N6EEQCD9GNCO9FDHGMSPPFADQ74QBECSTKOQJ1EPGIUR31DPJIUKRKE9KMSPPR55666RRD5TJMURR7DHIIUOBECHP6UQB45TGN0S3J5THM2RB5E9GIUOBJF5N66BQGE9NN0PBIEHSJM___(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/apps/camera/async/Observable;

    move-result-object v1

    invoke-direct {v0, v1, p2}, Lcom/android/camera/one/FlashSetting;-><init>(Lcom/google/android/apps/camera/async/Observable;Lcom/android/camera/one/OneCameraCharacteristics;)V

    .line 1128
    return-object v0
.end method

.method public provideHdrPlusMode()Lcom/google/android/apps/camera/async/Observable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/android/apps/camera/async/Observable",
            "<",
            "Lcom/android/camera/one/v2/OneCameraSettingsModule$HdrPlusMode;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1158
    iget-object v0, p0, Lcom/google/android/libraries/smartburst/analysis/FeatureExtractionGraph$Builder;->captureSettings:Lcom/android/camera/one/OneCameraCaptureSetting;

    invoke-virtual {v0}, Lcom/android/camera/one/OneCameraCaptureSetting;->hdrPlusSetting()Lcom/google/android/apps/camera/async/Observable;

    move-result-object v0

    return-object v0
.end method

.method public provideHdrSceneMode()Lcom/google/android/apps/camera/async/Observable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/android/apps/camera/async/Observable",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1139
    iget-object v0, p0, Lcom/google/android/libraries/smartburst/analysis/FeatureExtractionGraph$Builder;->captureSettings:Lcom/android/camera/one/OneCameraCaptureSetting;

    invoke-virtual {v0}, Lcom/android/camera/one/OneCameraCaptureSetting;->getHdrSceneSetting()Lcom/google/android/apps/camera/async/Observable;

    move-result-object v0

    return-object v0
.end method

.method public provideZoom()Lcom/google/android/apps/camera/async/Observable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/android/apps/camera/async/Observable",
            "<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1145
    iget-object v0, p0, Lcom/google/android/libraries/smartburst/analysis/FeatureExtractionGraph$Builder;->captureSettings:Lcom/android/camera/one/OneCameraCaptureSetting;

    invoke-virtual {v0}, Lcom/android/camera/one/OneCameraCaptureSetting;->getZoom()Lcom/google/android/apps/camera/async/Observable;

    move-result-object v0

    return-object v0
.end method
