.class public final Lcom/android/camera/one/v2/photo/flash/FlashModule_ProvideFlashIndicatorFactory;
.super Ljava/lang/Object;
.source "FlashModule_ProvideFlashIndicatorFactory.java"

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
.field private final indicatorProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<",
            "Lcom/android/camera/one/v2/photo/flash/AutoFlashIndicator;",
            ">;"
        }
    .end annotation
.end field

.field private final responseManagerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<",
            "Lcom/android/camera/one/v2/core/ResponseManager;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Ljavax/inject/Provider;Ljavax/inject/Provider;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider",
            "<",
            "Lcom/android/camera/one/v2/core/ResponseManager;",
            ">;",
            "Ljavax/inject/Provider",
            "<",
            "Lcom/android/camera/one/v2/photo/flash/AutoFlashIndicator;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    iput-object p1, p0, Lcom/android/camera/one/v2/photo/flash/FlashModule_ProvideFlashIndicatorFactory;->responseManagerProvider:Ljavax/inject/Provider;

    .line 23
    iput-object p2, p0, Lcom/android/camera/one/v2/photo/flash/FlashModule_ProvideFlashIndicatorFactory;->indicatorProvider:Ljavax/inject/Provider;

    .line 24
    return-void
.end method

.method public static create$5166KOBMC5S2UQBED9IM6T1FA1P6UTJ9CHIN4EQCD9GNCOBO5TKMSQJ5CDQ2UK3IDTR6IP35E8TIIJ34C5JMEPBI5TKMST35E9N62R1F8PGM6T3FE9SJM___(Ljavax/inject/Provider;Ljavax/inject/Provider;)Ljavax/inject/Provider;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider",
            "<",
            "Lcom/android/camera/one/v2/core/ResponseManager;",
            ">;",
            "Ljavax/inject/Provider",
            "<",
            "Lcom/android/camera/one/v2/photo/flash/AutoFlashIndicator;",
            ">;)",
            "Ljavax/inject/Provider;"
        }
    .end annotation

    .prologue
    .line 36
    new-instance v0, Lcom/android/camera/one/v2/photo/flash/FlashModule_ProvideFlashIndicatorFactory;

    invoke-direct {v0, p0, p1}, Lcom/android/camera/one/v2/photo/flash/FlashModule_ProvideFlashIndicatorFactory;-><init>(Ljavax/inject/Provider;Ljavax/inject/Provider;)V

    return-object v0
.end method


# virtual methods
.method public final synthetic get()Ljava/lang/Object;
    .locals 2

    .prologue
    .line 10
    .line 1028
    iget-object v0, p0, Lcom/android/camera/one/v2/photo/flash/FlashModule_ProvideFlashIndicatorFactory;->responseManagerProvider:Ljavax/inject/Provider;

    .line 1029
    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/one/v2/core/ResponseManager;

    iget-object v1, p0, Lcom/android/camera/one/v2/photo/flash/FlashModule_ProvideFlashIndicatorFactory;->indicatorProvider:Ljavax/inject/Provider;

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/camera/one/v2/photo/flash/AutoFlashIndicator;

    invoke-static {v0, v1}, Landroid/support/v4/content/res/ConfigurationHelper$ConfigurationHelperImpl;->provideFlashIndicator(Lcom/android/camera/one/v2/core/ResponseManager;Lcom/android/camera/one/v2/photo/flash/AutoFlashIndicator;)Lcom/google/android/apps/camera/async/Observable;

    move-result-object v0

    const-string v1, "Cannot return null from a non-@Nullable @Provides method"

    .line 1028
    invoke-static {v0, v1}, Landroid/support/v4/widget/DrawerLayout$DrawerLayoutCompatImplApi21;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/apps/camera/async/Observable;

    .line 10
    return-object v0
.end method
