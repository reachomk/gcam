.class public final Lcom/android/camera/burst/BurstModule_ProvideBurstRegistrationStartTaskFactory;
.super Ljava/lang/Object;
.source "BurstModule_ProvideBurstRegistrationStartTaskFactory.java"

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
.field private final burstFacadeProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<",
            "Lcom/android/camera/burst/BurstFacade;",
            ">;"
        }
    .end annotation
.end field

.field private final parametersProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<",
            "Lcom/android/camera/hdrplus/HdrPlusModule;",
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
            "Lcom/android/camera/burst/BurstFacade;",
            ">;",
            "Ljavax/inject/Provider",
            "<",
            "Lcom/android/camera/hdrplus/HdrPlusModule;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    iput-object p1, p0, Lcom/android/camera/burst/BurstModule_ProvideBurstRegistrationStartTaskFactory;->burstFacadeProvider:Ljavax/inject/Provider;

    .line 22
    iput-object p2, p0, Lcom/android/camera/burst/BurstModule_ProvideBurstRegistrationStartTaskFactory;->parametersProvider:Ljavax/inject/Provider;

    .line 23
    return-void
.end method

.method public static create$5166KOBMC5S2UQBED9IM6T1FA1P6UTJ9CHIN4EQCD9GNCOBO5TKMSQJ5CDQ2UK3IDTR6IP35E8TIIJ34C5JMEPBI5TKMST35E9N62R1F8PGM6T3FE9SJM___(Ljavax/inject/Provider;Ljavax/inject/Provider;)Ljavax/inject/Provider;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider",
            "<",
            "Lcom/android/camera/burst/BurstFacade;",
            ">;",
            "Ljavax/inject/Provider",
            "<",
            "Lcom/android/camera/hdrplus/HdrPlusModule;",
            ">;)",
            "Ljavax/inject/Provider;"
        }
    .end annotation

    .prologue
    .line 36
    new-instance v0, Lcom/android/camera/burst/BurstModule_ProvideBurstRegistrationStartTaskFactory;

    invoke-direct {v0, p0, p1}, Lcom/android/camera/burst/BurstModule_ProvideBurstRegistrationStartTaskFactory;-><init>(Ljavax/inject/Provider;Ljavax/inject/Provider;)V

    return-object v0
.end method


# virtual methods
.method public final synthetic get()Ljava/lang/Object;
    .locals 2

    .prologue
    .line 9
    .line 1027
    iget-object v0, p0, Lcom/android/camera/burst/BurstModule_ProvideBurstRegistrationStartTaskFactory;->burstFacadeProvider:Ljavax/inject/Provider;

    .line 1029
    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/burst/BurstFacade;

    iget-object v1, p0, Lcom/android/camera/burst/BurstModule_ProvideBurstRegistrationStartTaskFactory;->parametersProvider:Ljavax/inject/Provider;

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/camera/hdrplus/HdrPlusModule;

    .line 1028
    invoke-static {v0, v1}, Lcom/android/camera/burst/BurstFacadeStub;->provideBurstRegistrationStartTask$51666RRD5TGMSP3IDTKM8BR3C5MMASJ15TH7ASJJEGNK4TBIEDQ4COB3C5I6AEQCCDNMQBR1DPI74RR9CGNM6OBDCLP62BR2ELP76T1F89QN4SRK8PGM6OB4CKI44TBIEDQ50SJFCDIN6SR9DPJL0OBIC5MMAT35E9PJMAACCDNMQBR1DPI74RR9CGNM6OBDCLP62BRFDPIIUTHI5TM6IPJ5CDSM6R355T9N8OBIEHA62SRB7C______(Lcom/android/camera/burst/BurstFacade;Lcom/android/camera/hdrplus/HdrPlusModule;)Lcom/android/camera/one/v2/lifecycle/StartTask;

    move-result-object v0

    const-string v1, "Cannot return null from a non-@Nullable @Provides method"

    .line 1027
    invoke-static {v0, v1}, Landroid/support/v4/widget/DrawerLayout$DrawerLayoutCompatImplApi21;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/one/v2/lifecycle/StartTask;

    .line 9
    return-object v0
.end method
