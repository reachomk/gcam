.class public final Lcom/android/camera/one/v2/autofocus/AutoFocusModule_ProvideResettingDelayedExecutorFactory;
.super Ljava/lang/Object;
.source "AutoFocusModule_ProvideResettingDelayedExecutorFactory.java"

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
.field private final afHoldSecondsProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final afResetExecutorProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<",
            "Ljava/util/concurrent/ScheduledExecutorService;",
            ">;"
        }
    .end annotation
.end field

.field private final module:Lcom/android/camera/one/v2/autofocus/AutoFocusModule;


# direct methods
.method private constructor <init>(Lcom/android/camera/one/v2/autofocus/AutoFocusModule;Ljavax/inject/Provider;Ljavax/inject/Provider;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/camera/one/v2/autofocus/AutoFocusModule;",
            "Ljavax/inject/Provider",
            "<",
            "Ljava/util/concurrent/ScheduledExecutorService;",
            ">;",
            "Ljavax/inject/Provider",
            "<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    iput-object p1, p0, Lcom/android/camera/one/v2/autofocus/AutoFocusModule_ProvideResettingDelayedExecutorFactory;->module:Lcom/android/camera/one/v2/autofocus/AutoFocusModule;

    .line 26
    iput-object p2, p0, Lcom/android/camera/one/v2/autofocus/AutoFocusModule_ProvideResettingDelayedExecutorFactory;->afResetExecutorProvider:Ljavax/inject/Provider;

    .line 28
    iput-object p3, p0, Lcom/android/camera/one/v2/autofocus/AutoFocusModule_ProvideResettingDelayedExecutorFactory;->afHoldSecondsProvider:Ljavax/inject/Provider;

    .line 29
    return-void
.end method

.method public static create$51666RRD5TGMSP3IDTKM8BR3C5MMASJ15TNMSP9FEOP2UOBLEHNMCRR3ELPIUGBLEHNKCRR3ELPKQRR4ELM6AEQCD9GNCOBO5TKMSQJ5CDQ2UK3IDTR6IP35E8TKOQJ1EPGNGBR9DPL6AORK5T874RRMD5I6ASHR55668OB7CTIN4BR9DPQ6ASJEC5M2UHJ1CDQ6USJP7C______(Lcom/android/camera/one/v2/autofocus/AutoFocusModule;Ljavax/inject/Provider;Ljavax/inject/Provider;)Ljavax/inject/Provider;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/camera/one/v2/autofocus/AutoFocusModule;",
            "Ljavax/inject/Provider",
            "<",
            "Ljava/util/concurrent/ScheduledExecutorService;",
            ">;",
            "Ljavax/inject/Provider",
            "<",
            "Ljava/lang/Integer;",
            ">;)",
            "Ljavax/inject/Provider;"
        }
    .end annotation

    .prologue
    .line 43
    new-instance v0, Lcom/android/camera/one/v2/autofocus/AutoFocusModule_ProvideResettingDelayedExecutorFactory;

    invoke-direct {v0, p0, p1, p2}, Lcom/android/camera/one/v2/autofocus/AutoFocusModule_ProvideResettingDelayedExecutorFactory;-><init>(Lcom/android/camera/one/v2/autofocus/AutoFocusModule;Ljavax/inject/Provider;Ljavax/inject/Provider;)V

    return-object v0
.end method


# virtual methods
.method public final synthetic get()Ljava/lang/Object;
    .locals 6

    .prologue
    .line 10
    .line 1033
    iget-object v0, p0, Lcom/android/camera/one/v2/autofocus/AutoFocusModule_ProvideResettingDelayedExecutorFactory;->afResetExecutorProvider:Ljavax/inject/Provider;

    .line 1035
    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/concurrent/ScheduledExecutorService;

    iget-object v1, p0, Lcom/android/camera/one/v2/autofocus/AutoFocusModule_ProvideResettingDelayedExecutorFactory;->afHoldSecondsProvider:Ljavax/inject/Provider;

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 1152
    new-instance v2, Lcom/google/android/apps/camera/async/ResettingDelayedExecutor;

    int-to-long v4, v1

    sget-object v1, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-direct {v2, v0, v4, v5, v1}, Lcom/google/android/apps/camera/async/ResettingDelayedExecutor;-><init>(Ljava/util/concurrent/ScheduledExecutorService;JLjava/util/concurrent/TimeUnit;)V

    .line 1034
    const-string v0, "Cannot return null from a non-@Nullable @Provides method"

    .line 1033
    invoke-static {v2, v0}, Landroid/support/v4/widget/DrawerLayout$DrawerLayoutCompatImplApi21;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/apps/camera/async/ResettingDelayedExecutor;

    .line 10
    return-object v0
.end method
