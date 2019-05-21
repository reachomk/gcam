.class public final Lcom/android/camera/one/v2/autofocus/AutoFocusModule_ProvideAFStateMonitorFactory;
.super Ljava/lang/Object;
.source "AutoFocusModule_ProvideAFStateMonitorFactory.java"

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
.field private final implProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<",
            "Lcom/google/android/apps/camera/aaa/AfStateMonitor;",
            ">;"
        }
    .end annotation
.end field

.field private final module:Lcom/android/camera/one/v2/autofocus/AutoFocusModule;


# direct methods
.method private constructor <init>(Lcom/android/camera/one/v2/autofocus/AutoFocusModule;Ljavax/inject/Provider;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/camera/one/v2/autofocus/AutoFocusModule;",
            "Ljavax/inject/Provider",
            "<",
            "Lcom/google/android/apps/camera/aaa/AfStateMonitor;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    iput-object p1, p0, Lcom/android/camera/one/v2/autofocus/AutoFocusModule_ProvideAFStateMonitorFactory;->module:Lcom/android/camera/one/v2/autofocus/AutoFocusModule;

    .line 21
    iput-object p2, p0, Lcom/android/camera/one/v2/autofocus/AutoFocusModule_ProvideAFStateMonitorFactory;->implProvider:Ljavax/inject/Provider;

    .line 22
    return-void
.end method

.method public static create$51666RRD5TGMSP3IDTKM8BR3C5MMASJ15TNMSP9FEOP2UOBLEHNMCRR3ELPIUGBLEHNKCRR3ELPKQRR4ELM6AEQCD9GNCOBO5TKMSQJ5CDQ2UK3IDTR6IP35E8TIIJ34C5JMEPBI5TKMST35E9N62R1F8PGM6T3FE9SJM___(Lcom/android/camera/one/v2/autofocus/AutoFocusModule;Ljavax/inject/Provider;)Ljavax/inject/Provider;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/camera/one/v2/autofocus/AutoFocusModule;",
            "Ljavax/inject/Provider",
            "<",
            "Lcom/google/android/apps/camera/aaa/AfStateMonitor;",
            ">;)",
            "Ljavax/inject/Provider;"
        }
    .end annotation

    .prologue
    .line 33
    new-instance v0, Lcom/android/camera/one/v2/autofocus/AutoFocusModule_ProvideAFStateMonitorFactory;

    invoke-direct {v0, p0, p1}, Lcom/android/camera/one/v2/autofocus/AutoFocusModule_ProvideAFStateMonitorFactory;-><init>(Lcom/android/camera/one/v2/autofocus/AutoFocusModule;Ljavax/inject/Provider;)V

    return-object v0
.end method


# virtual methods
.method public final synthetic get()Ljava/lang/Object;
    .locals 2

    .prologue
    .line 10
    .line 1026
    iget-object v0, p0, Lcom/android/camera/one/v2/autofocus/AutoFocusModule_ProvideAFStateMonitorFactory;->implProvider:Ljavax/inject/Provider;

    .line 1027
    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/apps/camera/aaa/AfStateMonitor;

    const-string v1, "Cannot return null from a non-@Nullable @Provides method"

    .line 1026
    invoke-static {v0, v1}, Landroid/support/v4/widget/DrawerLayout$DrawerLayoutCompatImplApi21;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/apps/camera/aaa/AfStateMonitor;

    .line 10
    return-object v0
.end method
