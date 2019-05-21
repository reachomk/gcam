.class public final Lcom/android/camera/advice/AdvicePreviewListener_Factory;
.super Ljava/lang/Object;
.source "AdvicePreviewListener_Factory.java"

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
.field private final adviceImageRetrievalCommandProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<",
            "Lcom/android/camera/advice/AdvisingImageSaver;",
            ">;"
        }
    .end annotation
.end field

.field private final adviceManagerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<",
            "Lcom/android/camera/advice/AdviceManager;",
            ">;"
        }
    .end annotation
.end field

.field private final advicePreviewListenerMembersInjector:Ldagger/MembersInjector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/MembersInjector",
            "<",
            "Lcom/android/camera/advice/AdvicePreviewListener;",
            ">;"
        }
    .end annotation
.end field

.field private final executorProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<",
            "Lcom/android/camera/one/v2/command/CameraCommandExecutor;",
            ">;"
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
            "Lcom/android/camera/advice/AdvicePreviewListener;",
            ">;",
            "Ljavax/inject/Provider",
            "<",
            "Lcom/android/camera/advice/AdviceManager;",
            ">;",
            "Ljavax/inject/Provider",
            "<",
            "Lcom/android/camera/one/v2/command/CameraCommandExecutor;",
            ">;",
            "Ljavax/inject/Provider",
            "<",
            "Lcom/android/camera/advice/AdvisingImageSaver;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    iput-object p1, p0, Lcom/android/camera/advice/AdvicePreviewListener_Factory;->advicePreviewListenerMembersInjector:Ldagger/MembersInjector;

    .line 28
    iput-object p2, p0, Lcom/android/camera/advice/AdvicePreviewListener_Factory;->adviceManagerProvider:Ljavax/inject/Provider;

    .line 30
    iput-object p3, p0, Lcom/android/camera/advice/AdvicePreviewListener_Factory;->executorProvider:Ljavax/inject/Provider;

    .line 32
    iput-object p4, p0, Lcom/android/camera/advice/AdvicePreviewListener_Factory;->adviceImageRetrievalCommandProvider:Ljavax/inject/Provider;

    .line 33
    return-void
.end method

.method public static create$51668OB7CTIN4BQDCLMM4PBIED4MSQJ5CDQ6USHR9HL62TJ1F0NMIRJACLHN8BQGE9NNCQB4CLP3MJ3AC5R62U1FD5N6KPB3EGNL0SJFEPKM8PBI7D66KOBMC5S2UQBED9IM6T1FA1P6UTJ9CHIN4EP99HI62PR7CLP2UQBEEHIN4RJ1DGNKCOB3EHNN4U9R(Ldagger/MembersInjector;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Ljavax/inject/Provider;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ldagger/MembersInjector",
            "<",
            "Lcom/android/camera/advice/AdvicePreviewListener;",
            ">;",
            "Ljavax/inject/Provider",
            "<",
            "Lcom/android/camera/advice/AdviceManager;",
            ">;",
            "Ljavax/inject/Provider",
            "<",
            "Lcom/android/camera/one/v2/command/CameraCommandExecutor;",
            ">;",
            "Ljavax/inject/Provider",
            "<",
            "Lcom/android/camera/advice/AdvisingImageSaver;",
            ">;)",
            "Ljavax/inject/Provider;"
        }
    .end annotation

    .prologue
    .line 50
    new-instance v0, Lcom/android/camera/advice/AdvicePreviewListener_Factory;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/android/camera/advice/AdvicePreviewListener_Factory;-><init>(Ldagger/MembersInjector;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)V

    return-object v0
.end method


# virtual methods
.method public final synthetic get()Ljava/lang/Object;
    .locals 5

    .prologue
    .line 10
    .line 1037
    iget-object v2, p0, Lcom/android/camera/advice/AdvicePreviewListener_Factory;->advicePreviewListenerMembersInjector:Ldagger/MembersInjector;

    new-instance v3, Lcom/android/camera/advice/AdvicePreviewListener;

    iget-object v0, p0, Lcom/android/camera/advice/AdvicePreviewListener_Factory;->adviceManagerProvider:Ljavax/inject/Provider;

    .line 1040
    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/advice/AdviceManager;

    iget-object v1, p0, Lcom/android/camera/advice/AdvicePreviewListener_Factory;->executorProvider:Ljavax/inject/Provider;

    .line 1041
    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/camera/one/v2/command/CameraCommandExecutor;

    iget-object v4, p0, Lcom/android/camera/advice/AdvicePreviewListener_Factory;->adviceImageRetrievalCommandProvider:Ljavax/inject/Provider;

    invoke-direct {v3, v0, v1, v4}, Lcom/android/camera/advice/AdvicePreviewListener;-><init>(Lcom/android/camera/advice/AdviceManager;Lcom/android/camera/one/v2/command/CameraCommandExecutor;Ljavax/inject/Provider;)V

    .line 1037
    invoke-static {v2, v3}, Ldagger/internal/MembersInjectors;->injectMembers(Ldagger/MembersInjector;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/advice/AdvicePreviewListener;

    .line 10
    return-object v0
.end method
