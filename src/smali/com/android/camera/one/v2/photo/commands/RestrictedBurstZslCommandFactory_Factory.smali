.class public final Lcom/android/camera/one/v2/photo/commands/RestrictedBurstZslCommandFactory_Factory;
.super Ljava/lang/Object;
.source "RestrictedBurstZslCommandFactory_Factory.java"

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
            "Lcom/android/camera/one/v2/photo/commands/BurstZslCommandFactory;",
            ">;"
        }
    .end annotation
.end field

.field private final defaultPrefilterProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<",
            "Lcom/android/camera/one/v2/photo/commands/DefaultZslRingBufferPolicy;",
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
.method private constructor <init>(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider",
            "<",
            "Lcom/android/camera/one/v2/photo/commands/DefaultZslRingBufferPolicy;",
            ">;",
            "Ljavax/inject/Provider",
            "<",
            "Lcom/android/camera/one/v2/photo/commands/BurstZslCommandFactory;",
            ">;",
            "Ljavax/inject/Provider",
            "<",
            "Lcom/android/camera/one/OneCameraCharacteristics;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    iput-object p1, p0, Lcom/android/camera/one/v2/photo/commands/RestrictedBurstZslCommandFactory_Factory;->defaultPrefilterProvider:Ljavax/inject/Provider;

    .line 24
    iput-object p2, p0, Lcom/android/camera/one/v2/photo/commands/RestrictedBurstZslCommandFactory_Factory;->burstFactoryProvider:Ljavax/inject/Provider;

    .line 26
    iput-object p3, p0, Lcom/android/camera/one/v2/photo/commands/RestrictedBurstZslCommandFactory_Factory;->oneCharacteristicsProvider:Ljavax/inject/Provider;

    .line 27
    return-void
.end method

.method public static create$5166KOBMC5S2UQBED9IM6T1FA1P6UTJ9CHIN4EQCD9GNCOBO5TKMSQJ5CDQ2UK3IDTR6IP35E8TKOQJ1EPGNGBR9DPL6AORK5T874RRMD5I6ASHR55668OB7CTIN4BR9DPQ6ASJEC5M2UHJ1CDQ6USJP7C______(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Ljavax/inject/Provider;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider",
            "<",
            "Lcom/android/camera/one/v2/photo/commands/DefaultZslRingBufferPolicy;",
            ">;",
            "Ljavax/inject/Provider",
            "<",
            "Lcom/android/camera/one/v2/photo/commands/BurstZslCommandFactory;",
            ">;",
            "Ljavax/inject/Provider",
            "<",
            "Lcom/android/camera/one/OneCameraCharacteristics;",
            ">;)",
            "Ljavax/inject/Provider;"
        }
    .end annotation

    .prologue
    .line 41
    new-instance v0, Lcom/android/camera/one/v2/photo/commands/RestrictedBurstZslCommandFactory_Factory;

    invoke-direct {v0, p0, p1, p2}, Lcom/android/camera/one/v2/photo/commands/RestrictedBurstZslCommandFactory_Factory;-><init>(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)V

    return-object v0
.end method


# virtual methods
.method public final synthetic get()Ljava/lang/Object;
    .locals 4

    .prologue
    .line 8
    .line 1031
    new-instance v3, Lcom/android/camera/one/v2/photo/commands/RestrictedBurstZslCommandFactory;

    iget-object v0, p0, Lcom/android/camera/one/v2/photo/commands/RestrictedBurstZslCommandFactory_Factory;->defaultPrefilterProvider:Ljavax/inject/Provider;

    .line 1032
    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/one/v2/photo/commands/DefaultZslRingBufferPolicy;

    iget-object v1, p0, Lcom/android/camera/one/v2/photo/commands/RestrictedBurstZslCommandFactory_Factory;->burstFactoryProvider:Ljavax/inject/Provider;

    .line 1033
    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/camera/one/v2/photo/commands/BurstZslCommandFactory;

    iget-object v2, p0, Lcom/android/camera/one/v2/photo/commands/RestrictedBurstZslCommandFactory_Factory;->oneCharacteristicsProvider:Ljavax/inject/Provider;

    .line 1034
    invoke-interface {v2}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/camera/one/OneCameraCharacteristics;

    invoke-direct {v3, v0, v1, v2}, Lcom/android/camera/one/v2/photo/commands/RestrictedBurstZslCommandFactory;-><init>(Lcom/android/camera/one/v2/photo/commands/DefaultZslRingBufferPolicy;Lcom/android/camera/one/v2/photo/commands/BurstZslCommandFactory;Lcom/android/camera/one/OneCameraCharacteristics;)V

    .line 8
    return-object v3
.end method
