.class public final Lcom/android/camera/one/v2/common/ControlSceneModeSelector_Factory;
.super Ljava/lang/Object;
.source "ControlSceneModeSelector_Factory.java"

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
.field private final characteristicsProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<",
            "Lcom/android/camera/one/OneCameraCharacteristics;",
            ">;"
        }
    .end annotation
.end field

.field private final controlSceneModeSelectorMembersInjector:Ldagger/MembersInjector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/MembersInjector",
            "<",
            "Lcom/android/camera/one/v2/common/ControlSceneModeSelector;",
            ">;"
        }
    .end annotation
.end field

.field private final faceDetectModeProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<",
            "Lcom/google/android/apps/camera/async/Observable",
            "<",
            "Lcom/android/camera/one/OneCameraCharacteristics$FaceDetectMode;",
            ">;>;"
        }
    .end annotation
.end field

.field private final hdrSettingProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<",
            "Lcom/google/android/apps/camera/async/Observable",
            "<",
            "Ljava/lang/Boolean;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Ldagger/MembersInjector;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ldagger/MembersInjector",
            "<",
            "Lcom/android/camera/one/v2/common/ControlSceneModeSelector;",
            ">;",
            "Ljavax/inject/Provider",
            "<",
            "Lcom/google/android/apps/camera/async/Observable",
            "<",
            "Ljava/lang/Boolean;",
            ">;>;",
            "Ljavax/inject/Provider",
            "<",
            "Lcom/google/android/apps/camera/async/Observable",
            "<",
            "Lcom/android/camera/one/OneCameraCharacteristics$FaceDetectMode;",
            ">;>;",
            "Ljavax/inject/Provider",
            "<",
            "Lcom/android/camera/one/OneCameraCharacteristics;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    iput-object p1, p0, Lcom/android/camera/one/v2/common/ControlSceneModeSelector_Factory;->controlSceneModeSelectorMembersInjector:Ldagger/MembersInjector;

    .line 30
    iput-object p2, p0, Lcom/android/camera/one/v2/common/ControlSceneModeSelector_Factory;->hdrSettingProvider:Ljavax/inject/Provider;

    .line 32
    iput-object p3, p0, Lcom/android/camera/one/v2/common/ControlSceneModeSelector_Factory;->faceDetectModeProvider:Ljavax/inject/Provider;

    .line 34
    iput-object p4, p0, Lcom/android/camera/one/v2/common/ControlSceneModeSelector_Factory;->characteristicsProvider:Ljavax/inject/Provider;

    .line 35
    return-void
.end method

.method public static create$51668OB7CTIN4BQDCLMM4PBIED4MSQJ5CDQ6USHR9HL62TJ1F0NMIRJACLHN8BQGE9NNCQB4CLP3MJ3AC5R62U1FD5N6KPB3EGNL0SJFEPKM8PBI7D66KOBMC5S2UQBED9IM6T1FA1P6UTJ9CHIN4EP99HI62PR7CLP2UQBEEHIN4RJ1DGNKCOB3EHNN4U9R(Ldagger/MembersInjector;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Ljavax/inject/Provider;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ldagger/MembersInjector",
            "<",
            "Lcom/android/camera/one/v2/common/ControlSceneModeSelector;",
            ">;",
            "Ljavax/inject/Provider",
            "<",
            "Lcom/google/android/apps/camera/async/Observable",
            "<",
            "Ljava/lang/Boolean;",
            ">;>;",
            "Ljavax/inject/Provider",
            "<",
            "Lcom/google/android/apps/camera/async/Observable",
            "<",
            "Lcom/android/camera/one/OneCameraCharacteristics$FaceDetectMode;",
            ">;>;",
            "Ljavax/inject/Provider",
            "<",
            "Lcom/android/camera/one/OneCameraCharacteristics;",
            ">;)",
            "Ljavax/inject/Provider;"
        }
    .end annotation

    .prologue
    .line 50
    new-instance v0, Lcom/android/camera/one/v2/common/ControlSceneModeSelector_Factory;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/android/camera/one/v2/common/ControlSceneModeSelector_Factory;-><init>(Ldagger/MembersInjector;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)V

    return-object v0
.end method


# virtual methods
.method public final synthetic get()Ljava/lang/Object;
    .locals 5

    .prologue
    .line 11
    .line 1039
    iget-object v3, p0, Lcom/android/camera/one/v2/common/ControlSceneModeSelector_Factory;->controlSceneModeSelectorMembersInjector:Ldagger/MembersInjector;

    new-instance v4, Lcom/android/camera/one/v2/common/ControlSceneModeSelector;

    iget-object v0, p0, Lcom/android/camera/one/v2/common/ControlSceneModeSelector_Factory;->hdrSettingProvider:Ljavax/inject/Provider;

    .line 1042
    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/apps/camera/async/Observable;

    iget-object v1, p0, Lcom/android/camera/one/v2/common/ControlSceneModeSelector_Factory;->faceDetectModeProvider:Ljavax/inject/Provider;

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/apps/camera/async/Observable;

    iget-object v2, p0, Lcom/android/camera/one/v2/common/ControlSceneModeSelector_Factory;->characteristicsProvider:Ljavax/inject/Provider;

    invoke-interface {v2}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/camera/one/OneCameraCharacteristics;

    invoke-direct {v4, v0, v1, v2}, Lcom/android/camera/one/v2/common/ControlSceneModeSelector;-><init>(Lcom/google/android/apps/camera/async/Observable;Lcom/google/android/apps/camera/async/Observable;Lcom/android/camera/one/OneCameraCharacteristics;)V

    .line 1039
    invoke-static {v3, v4}, Ldagger/internal/MembersInjectors;->injectMembers(Ldagger/MembersInjector;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/one/v2/common/ControlSceneModeSelector;

    .line 11
    return-object v0
.end method
