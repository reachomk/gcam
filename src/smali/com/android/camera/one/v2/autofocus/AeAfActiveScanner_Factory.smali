.class public final Lcom/android/camera/one/v2/autofocus/AeAfActiveScanner_Factory;
.super Ljava/lang/Object;
.source "AeAfActiveScanner_Factory.java"

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
.field private final activeScanRequestBuilderProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<",
            "Lcom/google/android/libraries/smartburst/artifacts/renderers/RasterizerFunctions;",
            ">;"
        }
    .end annotation
.end field

.field private final focusMonitorProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<",
            "Lcom/android/camera/one/v2/autofocus/FocusMonitor;",
            ">;"
        }
    .end annotation
.end field

.field private final frameServerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<",
            "Lcom/android/camera/one/v2/core/FrameServer;",
            ">;"
        }
    .end annotation
.end field

.field private final requestTemplateProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<",
            "Lcom/google/common/util/concurrent/ListenableFuture",
            "<",
            "Lcom/android/camera/one/v2/common/CommonRequestTemplate;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider",
            "<",
            "Lcom/android/camera/one/v2/core/FrameServer;",
            ">;",
            "Ljavax/inject/Provider",
            "<",
            "Lcom/google/common/util/concurrent/ListenableFuture",
            "<",
            "Lcom/android/camera/one/v2/common/CommonRequestTemplate;",
            ">;>;",
            "Ljavax/inject/Provider",
            "<",
            "Lcom/google/android/libraries/smartburst/artifacts/renderers/RasterizerFunctions;",
            ">;",
            "Ljavax/inject/Provider",
            "<",
            "Lcom/android/camera/one/v2/autofocus/FocusMonitor;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    iput-object p1, p0, Lcom/android/camera/one/v2/autofocus/AeAfActiveScanner_Factory;->frameServerProvider:Ljavax/inject/Provider;

    .line 28
    iput-object p2, p0, Lcom/android/camera/one/v2/autofocus/AeAfActiveScanner_Factory;->requestTemplateProvider:Ljavax/inject/Provider;

    .line 30
    iput-object p3, p0, Lcom/android/camera/one/v2/autofocus/AeAfActiveScanner_Factory;->activeScanRequestBuilderProvider:Ljavax/inject/Provider;

    .line 32
    iput-object p4, p0, Lcom/android/camera/one/v2/autofocus/AeAfActiveScanner_Factory;->focusMonitorProvider:Ljavax/inject/Provider;

    .line 33
    return-void
.end method

.method public static create$5166KOBMC5S2UQBED9IM6T1FA1P6UTJ9CHIN4EQCD9GNCOBO5TKMSQJ5CDQ2UK3IDTR6IP35E8TKOQJ1EPGNGBR9DPL6AORK5T874RRMD5I6ASHR9HL62TJ1F0NMIRJACLHN8BQGE9NNCQB4CLP3MAACCHGMEPR5E8NMIRJKCLP6SOBC5T362ORKDTP7IEO_(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Ljavax/inject/Provider;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider",
            "<",
            "Lcom/android/camera/one/v2/core/FrameServer;",
            ">;",
            "Ljavax/inject/Provider",
            "<",
            "Lcom/google/common/util/concurrent/ListenableFuture",
            "<",
            "Lcom/android/camera/one/v2/common/CommonRequestTemplate;",
            ">;>;",
            "Ljavax/inject/Provider",
            "<",
            "Lcom/google/android/libraries/smartburst/artifacts/renderers/RasterizerFunctions;",
            ">;",
            "Ljavax/inject/Provider",
            "<",
            "Lcom/android/camera/one/v2/autofocus/FocusMonitor;",
            ">;)",
            "Ljavax/inject/Provider;"
        }
    .end annotation

    .prologue
    .line 49
    new-instance v0, Lcom/android/camera/one/v2/autofocus/AeAfActiveScanner_Factory;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/android/camera/one/v2/autofocus/AeAfActiveScanner_Factory;-><init>(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)V

    return-object v0
.end method


# virtual methods
.method public final synthetic get()Ljava/lang/Object;
    .locals 5

    .prologue
    .line 10
    .line 1037
    new-instance v4, Lcom/android/camera/one/v2/autofocus/AeAfActiveScanner;

    iget-object v0, p0, Lcom/android/camera/one/v2/autofocus/AeAfActiveScanner_Factory;->frameServerProvider:Ljavax/inject/Provider;

    .line 1038
    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/one/v2/core/FrameServer;

    iget-object v1, p0, Lcom/android/camera/one/v2/autofocus/AeAfActiveScanner_Factory;->requestTemplateProvider:Ljavax/inject/Provider;

    .line 1039
    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/common/util/concurrent/ListenableFuture;

    iget-object v2, p0, Lcom/android/camera/one/v2/autofocus/AeAfActiveScanner_Factory;->activeScanRequestBuilderProvider:Ljavax/inject/Provider;

    .line 1040
    invoke-interface {v2}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/libraries/smartburst/artifacts/renderers/RasterizerFunctions;

    iget-object v3, p0, Lcom/android/camera/one/v2/autofocus/AeAfActiveScanner_Factory;->focusMonitorProvider:Ljavax/inject/Provider;

    .line 1041
    invoke-interface {v3}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/camera/one/v2/autofocus/FocusMonitor;

    invoke-direct {v4, v0, v1, v2, v3}, Lcom/android/camera/one/v2/autofocus/AeAfActiveScanner;-><init>(Lcom/android/camera/one/v2/core/FrameServer;Lcom/google/common/util/concurrent/ListenableFuture;Lcom/google/android/libraries/smartburst/artifacts/renderers/RasterizerFunctions;Lcom/android/camera/one/v2/autofocus/FocusMonitor;)V

    .line 10
    return-object v4
.end method
