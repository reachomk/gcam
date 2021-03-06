.class final Lcom/android/camera/one/v2/common/ControlModeSelector;
.super Lcom/google/android/apps/camera/async/TransformedObservable;
.source "ControlModeSelector.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/apps/camera/async/TransformedObservable",
        "<",
        "Ljava/util/List",
        "<",
        "Ljava/lang/Object;",
        ">;",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# instance fields
.field private final supportedHardwareLevel$9HHMUR9FC5N68SJFD5I2UOR1DLIN4O9FDTN6ABQFDPIK6OBDCLP62GR8C5P62ORKCLP6ISRKD5HN692JELO70RRIEHIM8I31E9I7EOBICL66ATJ5DGTG____:I


# direct methods
.method public constructor <init>(Lcom/google/android/apps/camera/async/Observable;Lcom/google/android/apps/camera/async/Observable;Lcom/google/android/apps/camera/async/ConcurrentState;Lcom/android/camera/one/OneCameraCharacteristics;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/apps/camera/async/Observable",
            "<",
            "Ljava/lang/Boolean;",
            ">;",
            "Lcom/google/android/apps/camera/async/Observable",
            "<",
            "Lcom/android/camera/one/OneCameraCharacteristics$FaceDetectMode;",
            ">;",
            "Lcom/google/android/apps/camera/async/ConcurrentState",
            "<",
            "Lcom/google/android/apps/camera/proxy/camera2/ControlAfMode;",
            ">;",
            "Lcom/android/camera/one/OneCameraCharacteristics;",
            ")V"
        }
    .end annotation

    .prologue
    .line 31
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/google/android/apps/camera/async/Observable;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const/4 v1, 0x1

    aput-object p2, v0, v1

    const/4 v1, 0x2

    aput-object p3, v0, v1

    invoke-static {v0}, Lcom/google/android/apps/camera/async/Observables;->allAsList([Lcom/google/android/apps/camera/async/Observable;)Lcom/google/android/apps/camera/async/Observable;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/android/apps/camera/async/TransformedObservable;-><init>(Lcom/google/android/apps/camera/async/Observable;)V

    .line 32
    invoke-interface {p4}, Lcom/android/camera/one/OneCameraCharacteristics;->getSupportedHardwareLevel$50KKOORFDKNM2RJ4E9NMIP1FCDGMQPBIC4NMURJ55T7MSPA3C5MMASJ18DK62SJ1CDQ6ASJ9EDQ6IORJ4H9NAS3GDTP78PB491GN4P3NC5P6AJ35EPIMOEO_()I

    move-result v0

    iput v0, p0, Lcom/android/camera/one/v2/common/ControlModeSelector;->supportedHardwareLevel$9HHMUR9FC5N68SJFD5I2UOR1DLIN4O9FDTN6ABQFDPIK6OBDCLP62GR8C5P62ORKCLP6ISRKD5HN692JELO70RRIEHIM8I31E9I7EOBICL66ATJ5DGTG____:I

    .line 33
    return-void
.end method


# virtual methods
.method protected final synthetic transform(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6

    .prologue
    const/4 v5, 0x2

    const/4 v4, 0x1

    .line 22
    check-cast p1, Ljava/util/List;

    .line 1038
    const/4 v0, 0x0

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    .line 1039
    invoke-interface {p1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/camera/one/OneCameraCharacteristics$FaceDetectMode;

    .line 1040
    invoke-interface {p1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/apps/camera/proxy/camera2/ControlAfMode;

    .line 1043
    sget-object v3, Lcom/google/android/apps/camera/proxy/camera2/ControlAfMode;->AUTO:Lcom/google/android/apps/camera/proxy/camera2/ControlAfMode;

    if-ne v2, v3, :cond_0

    .line 1044
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 1054
    :goto_0
    return-object v0

    .line 1047
    :cond_0
    iget v2, p0, Lcom/android/camera/one/v2/common/ControlModeSelector;->supportedHardwareLevel$9HHMUR9FC5N68SJFD5I2UOR1DLIN4O9FDTN6ABQFDPIK6OBDCLP62GR8C5P62ORKCLP6ISRKD5HN692JELO70RRIEHIM8I31E9I7EOBICL66ATJ5DGTG____:I

    sget v3, Lcom/android/camera/one/OneCameraCharacteristics$SupportedHardwareLevel;->LEGACY$9HHMUR9FC5N68SJFD5I2UOR1DLIN4O9FDTN6ABQFDPIK6OBDCLP62GR8C5P62ORKCLP6ISRKD5HN692JELO70RRIEHIM8I31E9I7EOBICL66ATJ5DGTG____:I

    if-ne v2, v3, :cond_1

    .line 1048
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1049
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_0

    .line 1053
    :cond_1
    sget-object v0, Lcom/android/camera/one/OneCameraCharacteristics$FaceDetectMode;->FULL:Lcom/android/camera/one/OneCameraCharacteristics$FaceDetectMode;

    if-eq v1, v0, :cond_2

    sget-object v0, Lcom/android/camera/one/OneCameraCharacteristics$FaceDetectMode;->SIMPLE:Lcom/android/camera/one/OneCameraCharacteristics$FaceDetectMode;

    if-ne v1, v0, :cond_3

    .line 1054
    :cond_2
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_0

    .line 1057
    :cond_3
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_0
.end method
