.class public final Lcom/android/camera/one/v2/common/StatisticsFaceDetectMode_Factory;
.super Ljava/lang/Object;
.source "StatisticsFaceDetectMode_Factory.java"

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

.field private final statisticsFaceDetectModeMembersInjector:Ldagger/MembersInjector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/MembersInjector",
            "<",
            "Lcom/android/camera/one/v2/common/StatisticsFaceDetectMode;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Ldagger/MembersInjector;Ljavax/inject/Provider;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ldagger/MembersInjector",
            "<",
            "Lcom/android/camera/one/v2/common/StatisticsFaceDetectMode;",
            ">;",
            "Ljavax/inject/Provider",
            "<",
            "Lcom/google/android/apps/camera/async/Observable",
            "<",
            "Lcom/android/camera/one/OneCameraCharacteristics$FaceDetectMode;",
            ">;>;)V"
        }
    .end annotation

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    iput-object p1, p0, Lcom/android/camera/one/v2/common/StatisticsFaceDetectMode_Factory;->statisticsFaceDetectModeMembersInjector:Ldagger/MembersInjector;

    .line 24
    iput-object p2, p0, Lcom/android/camera/one/v2/common/StatisticsFaceDetectMode_Factory;->faceDetectModeProvider:Ljavax/inject/Provider;

    .line 25
    return-void
.end method

.method public static create$51668OB7CTIN4BQDCLMM4PBIED4MSQJ5CDQ6USHR9HL62TJ1F0NMIRJACLHN8BQGE9NNCQB4CLP3MAACCHGMEPR5E8NMIRJKCLP6SOBC5T362ORKDTP7IEO_(Ldagger/MembersInjector;Ljavax/inject/Provider;)Ljavax/inject/Provider;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ldagger/MembersInjector",
            "<",
            "Lcom/android/camera/one/v2/common/StatisticsFaceDetectMode;",
            ">;",
            "Ljavax/inject/Provider",
            "<",
            "Lcom/google/android/apps/camera/async/Observable",
            "<",
            "Lcom/android/camera/one/OneCameraCharacteristics$FaceDetectMode;",
            ">;>;)",
            "Ljavax/inject/Provider;"
        }
    .end annotation

    .prologue
    .line 37
    new-instance v0, Lcom/android/camera/one/v2/common/StatisticsFaceDetectMode_Factory;

    invoke-direct {v0, p0, p1}, Lcom/android/camera/one/v2/common/StatisticsFaceDetectMode_Factory;-><init>(Ldagger/MembersInjector;Ljavax/inject/Provider;)V

    return-object v0
.end method


# virtual methods
.method public final synthetic get()Ljava/lang/Object;
    .locals 3

    .prologue
    .line 11
    .line 1029
    iget-object v1, p0, Lcom/android/camera/one/v2/common/StatisticsFaceDetectMode_Factory;->statisticsFaceDetectModeMembersInjector:Ldagger/MembersInjector;

    new-instance v2, Lcom/android/camera/one/v2/common/StatisticsFaceDetectMode;

    iget-object v0, p0, Lcom/android/camera/one/v2/common/StatisticsFaceDetectMode_Factory;->faceDetectModeProvider:Ljavax/inject/Provider;

    .line 1031
    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/apps/camera/async/Observable;

    invoke-direct {v2, v0}, Lcom/android/camera/one/v2/common/StatisticsFaceDetectMode;-><init>(Lcom/google/android/apps/camera/async/Observable;)V

    .line 1029
    invoke-static {v1, v2}, Ldagger/internal/MembersInjectors;->injectMembers(Ldagger/MembersInjector;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/one/v2/common/StatisticsFaceDetectMode;

    .line 11
    return-object v0
.end method
