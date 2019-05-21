.class public final Lcom/android/camera/one/v2/photo/commands/RestrictedBurstCommandFactory_Factory;
.super Ljava/lang/Object;
.source "RestrictedBurstCommandFactory_Factory.java"

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
.field private final burstFactoryProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<",
            "Lcom/android/camera/one/v2/photo/commands/BurstNoFlashCommandFactory;",
            ">;"
        }
    .end annotation
.end field

.field private final oneCharacteristicsProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<",
            "Lcom/android/camera/one/OneCameraCharacteristics;",
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
            "Lcom/android/camera/one/v2/photo/commands/BurstNoFlashCommandFactory;",
            ">;",
            "Ljavax/inject/Provider",
            "<",
            "Lcom/android/camera/one/OneCameraCharacteristics;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    iput-object p1, p0, Lcom/android/camera/one/v2/photo/commands/RestrictedBurstCommandFactory_Factory;->burstFactoryProvider:Ljavax/inject/Provider;

    .line 21
    iput-object p2, p0, Lcom/android/camera/one/v2/photo/commands/RestrictedBurstCommandFactory_Factory;->oneCharacteristicsProvider:Ljavax/inject/Provider;

    .line 22
    return-void
.end method

.method public static create$5166KOBMC5S2UQBED9IM6T1FA1P6UTJ9CHIN4EQCD9GNCOBO5TKMSQJ5CDQ2UK3IDTR6IP35E8TIIJ34C5JMEPBI5TKMST35E9N62R1F8PGM6T3FE9SJM___(Ljavax/inject/Provider;Ljavax/inject/Provider;)Ljavax/inject/Provider;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider",
            "<",
            "Lcom/android/camera/one/v2/photo/commands/BurstNoFlashCommandFactory;",
            ">;",
            "Ljavax/inject/Provider",
            "<",
            "Lcom/android/camera/one/OneCameraCharacteristics;",
            ">;)",
            "Ljavax/inject/Provider;"
        }
    .end annotation

    .prologue
    .line 33
    new-instance v0, Lcom/android/camera/one/v2/photo/commands/RestrictedBurstCommandFactory_Factory;

    invoke-direct {v0, p0, p1}, Lcom/android/camera/one/v2/photo/commands/RestrictedBurstCommandFactory_Factory;-><init>(Ljavax/inject/Provider;Ljavax/inject/Provider;)V

    return-object v0
.end method


# virtual methods
.method public final synthetic get()Ljava/lang/Object;
    .locals 3

    .prologue
    .line 8
    .line 1026
    new-instance v2, Lcom/google/common/primitives/Booleans;

    iget-object v0, p0, Lcom/android/camera/one/v2/photo/commands/RestrictedBurstCommandFactory_Factory;->burstFactoryProvider:Ljavax/inject/Provider;

    .line 1027
    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/one/v2/photo/commands/BurstNoFlashCommandFactory;

    iget-object v1, p0, Lcom/android/camera/one/v2/photo/commands/RestrictedBurstCommandFactory_Factory;->oneCharacteristicsProvider:Ljavax/inject/Provider;

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/camera/one/OneCameraCharacteristics;

    invoke-direct {v2, v0, v1}, Lcom/google/common/primitives/Booleans;-><init>(Lcom/android/camera/one/v2/photo/commands/BurstNoFlashCommandFactory;Lcom/android/camera/one/OneCameraCharacteristics;)V

    .line 8
    return-object v2
.end method
