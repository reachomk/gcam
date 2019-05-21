.class public final Lcom/android/camera/debug/DebugModule_ProvideLoggerFactoryFactory;
.super Ljava/lang/Object;
.source "DebugModule_ProvideLoggerFactoryFactory.java"

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
.field private final module:Lcom/android/camera/debug/DebugModule;


# direct methods
.method private constructor <init>(Lcom/android/camera/debug/DebugModule;)V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    iput-object p1, p0, Lcom/android/camera/debug/DebugModule_ProvideLoggerFactoryFactory;->module:Lcom/android/camera/debug/DebugModule;

    .line 14
    return-void
.end method

.method public static create$51666RRD5TGMSP3IDTKM8BR3C5MMASJ15TI6AOJLCSNK8PB2ELJKQRR4ELM6AEP99HI62PR7CLP2UQBEEHIN4RJ1DGNKCOB3EHNN4U9R(Lcom/android/camera/debug/DebugModule;)Ljavax/inject/Provider;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/camera/debug/DebugModule;",
            ")",
            "Ljavax/inject/Provider;"
        }
    .end annotation

    .prologue
    .line 23
    new-instance v0, Lcom/android/camera/debug/DebugModule_ProvideLoggerFactoryFactory;

    invoke-direct {v0, p0}, Lcom/android/camera/debug/DebugModule_ProvideLoggerFactoryFactory;-><init>(Lcom/android/camera/debug/DebugModule;)V

    return-object v0
.end method


# virtual methods
.method public final synthetic get()Ljava/lang/Object;
    .locals 2

    .prologue
    .line 7
    .line 2010
    invoke-static {}, Lcom/android/camera/debug/DebugModule;->tagFactory()Lcom/android/camera/debug/Logger$Factory;

    move-result-object v0

    .line 1019
    const-string v1, "Cannot return null from a non-@Nullable @Provides method"

    .line 1018
    invoke-static {v0, v1}, Landroid/support/v4/widget/DrawerLayout$DrawerLayoutCompatImplApi21;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/debug/Logger$Factory;

    .line 7
    return-object v0
.end method
