.class public final Lcom/android/camera/one/v2/smartmetering/SimpleMeteringResponseListener_Factory;
.super Ljava/lang/Object;
.source "SimpleMeteringResponseListener_Factory.java"

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
.field private final filterProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<",
            "Lcom/android/camera/one/v2/smartmetering/AutoFlashHdrPlusDecider;",
            ">;"
        }
    .end annotation
.end field

.field private final meteringMetricProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<",
            "Lcom/android/camera/one/v2/smartmetering/MeteringMetric;",
            ">;"
        }
    .end annotation
.end field

.field private final simpleMeteringResponseListenerMembersInjector:Ldagger/MembersInjector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/MembersInjector",
            "<",
            "Lcom/android/camera/one/v2/smartmetering/SimpleMeteringResponseListener;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Ldagger/MembersInjector;Ljavax/inject/Provider;Ljavax/inject/Provider;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ldagger/MembersInjector",
            "<",
            "Lcom/android/camera/one/v2/smartmetering/SimpleMeteringResponseListener;",
            ">;",
            "Ljavax/inject/Provider",
            "<",
            "Lcom/android/camera/one/v2/smartmetering/MeteringMetric;",
            ">;",
            "Ljavax/inject/Provider",
            "<",
            "Lcom/android/camera/one/v2/smartmetering/AutoFlashHdrPlusDecider;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    iput-object p1, p0, Lcom/android/camera/one/v2/smartmetering/SimpleMeteringResponseListener_Factory;->simpleMeteringResponseListenerMembersInjector:Ldagger/MembersInjector;

    .line 27
    iput-object p2, p0, Lcom/android/camera/one/v2/smartmetering/SimpleMeteringResponseListener_Factory;->meteringMetricProvider:Ljavax/inject/Provider;

    .line 29
    iput-object p3, p0, Lcom/android/camera/one/v2/smartmetering/SimpleMeteringResponseListener_Factory;->filterProvider:Ljavax/inject/Provider;

    .line 30
    return-void
.end method

.method public static create$51668OB7CTIN4BQDCLMM4PBIED4MSQJ5CDQ6USHR9HL62TJ1F0NMIRJACLHN8BQGE9NNCQB4CLP3MJ3AC5R62U1FD5N6KPB3EGNL0SJFEPKM8PBI7CKKOP31CTJMASHFD5N78PBIDPGMOBQ6C5HN8RRIF4TG____(Ldagger/MembersInjector;Ljavax/inject/Provider;Ljavax/inject/Provider;)Ljavax/inject/Provider;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ldagger/MembersInjector",
            "<",
            "Lcom/android/camera/one/v2/smartmetering/SimpleMeteringResponseListener;",
            ">;",
            "Ljavax/inject/Provider",
            "<",
            "Lcom/android/camera/one/v2/smartmetering/MeteringMetric;",
            ">;",
            "Ljavax/inject/Provider",
            "<",
            "Lcom/android/camera/one/v2/smartmetering/AutoFlashHdrPlusDecider;",
            ">;)",
            "Ljavax/inject/Provider;"
        }
    .end annotation

    .prologue
    .line 43
    new-instance v0, Lcom/android/camera/one/v2/smartmetering/SimpleMeteringResponseListener_Factory;

    invoke-direct {v0, p0, p1, p2}, Lcom/android/camera/one/v2/smartmetering/SimpleMeteringResponseListener_Factory;-><init>(Ldagger/MembersInjector;Ljavax/inject/Provider;Ljavax/inject/Provider;)V

    return-object v0
.end method


# virtual methods
.method public final synthetic get()Ljava/lang/Object;
    .locals 4

    .prologue
    .line 9
    .line 1034
    iget-object v2, p0, Lcom/android/camera/one/v2/smartmetering/SimpleMeteringResponseListener_Factory;->simpleMeteringResponseListenerMembersInjector:Ldagger/MembersInjector;

    new-instance v3, Lcom/android/camera/one/v2/smartmetering/SimpleMeteringResponseListener;

    iget-object v0, p0, Lcom/android/camera/one/v2/smartmetering/SimpleMeteringResponseListener_Factory;->meteringMetricProvider:Ljavax/inject/Provider;

    .line 1036
    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/one/v2/smartmetering/MeteringMetric;

    iget-object v1, p0, Lcom/android/camera/one/v2/smartmetering/SimpleMeteringResponseListener_Factory;->filterProvider:Ljavax/inject/Provider;

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/camera/one/v2/smartmetering/AutoFlashHdrPlusDecider;

    invoke-direct {v3, v0, v1}, Lcom/android/camera/one/v2/smartmetering/SimpleMeteringResponseListener;-><init>(Lcom/android/camera/one/v2/smartmetering/MeteringMetric;Lcom/android/camera/one/v2/smartmetering/AutoFlashHdrPlusDecider;)V

    .line 1034
    invoke-static {v2, v3}, Ldagger/internal/MembersInjectors;->injectMembers(Ldagger/MembersInjector;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/one/v2/smartmetering/SimpleMeteringResponseListener;

    .line 9
    return-object v0
.end method
