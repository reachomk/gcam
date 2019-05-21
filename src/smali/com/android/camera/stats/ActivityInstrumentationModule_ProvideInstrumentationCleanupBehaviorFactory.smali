.class public final Lcom/android/camera/stats/ActivityInstrumentationModule_ProvideInstrumentationCleanupBehaviorFactory;
.super Ljava/lang/Object;
.source "ActivityInstrumentationModule_ProvideInstrumentationCleanupBehaviorFactory.java"

# interfaces
.implements Ljavax/inject/Provider;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljavax/inject/Provider;"
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field private final activityLifecycleProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<",
            "Lcom/google/android/libraries/stitch/lifecycle/Lifecycle;",
            ">;"
        }
    .end annotation
.end field

.field private final cleanupBehaviorProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<",
            "Lcom/android/camera/stats/InstrumentationSessionCleanupBehavior;",
            ">;"
        }
    .end annotation
.end field

.field private final mainThreadProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<",
            "Lcom/google/android/apps/camera/async/MainThread;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .prologue
    .line 11
    return-void
.end method

.method public constructor <init>(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider",
            "<",
            "Lcom/google/android/apps/camera/async/MainThread;",
            ">;",
            "Ljavax/inject/Provider",
            "<",
            "Lcom/google/android/libraries/stitch/lifecycle/Lifecycle;",
            ">;",
            "Ljavax/inject/Provider",
            "<",
            "Lcom/android/camera/stats/InstrumentationSessionCleanupBehavior;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    iput-object p1, p0, Lcom/android/camera/stats/ActivityInstrumentationModule_ProvideInstrumentationCleanupBehaviorFactory;->mainThreadProvider:Ljavax/inject/Provider;

    .line 27
    iput-object p2, p0, Lcom/android/camera/stats/ActivityInstrumentationModule_ProvideInstrumentationCleanupBehaviorFactory;->activityLifecycleProvider:Ljavax/inject/Provider;

    .line 29
    iput-object p3, p0, Lcom/android/camera/stats/ActivityInstrumentationModule_ProvideInstrumentationCleanupBehaviorFactory;->cleanupBehaviorProvider:Ljavax/inject/Provider;

    .line 30
    return-void
.end method

.method public static create$5166KOBMC5S2UQBED9IM6T1FA1P6UTJ9CHIN4EQCD9GNCOBO5TKMSQJ5CDQ2UK3IDTR6IP35E8TKOQJ1EPGNGBR9DPL6AORK5T874RRMD5I6ASHR55668OB7CTIN4BR9DPQ6ASJEC5M2UHJ1CDQ6USJP7C______(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Ljavax/inject/Provider;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider",
            "<",
            "Lcom/google/android/apps/camera/async/MainThread;",
            ">;",
            "Ljavax/inject/Provider",
            "<",
            "Lcom/google/android/libraries/stitch/lifecycle/Lifecycle;",
            ">;",
            "Ljavax/inject/Provider",
            "<",
            "Lcom/android/camera/stats/InstrumentationSessionCleanupBehavior;",
            ">;)",
            "Ljavax/inject/Provider;"
        }
    .end annotation

    .prologue
    .line 46
    new-instance v0, Lcom/android/camera/stats/ActivityInstrumentationModule_ProvideInstrumentationCleanupBehaviorFactory;

    invoke-direct {v0, p0, p1, p2}, Lcom/android/camera/stats/ActivityInstrumentationModule_ProvideInstrumentationCleanupBehaviorFactory;-><init>(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)V

    return-object v0
.end method


# virtual methods
.method public final get()Lcom/android/camera/behavior/Behavior;
    .locals 3

    .prologue
    .line 34
    iget-object v0, p0, Lcom/android/camera/stats/ActivityInstrumentationModule_ProvideInstrumentationCleanupBehaviorFactory;->mainThreadProvider:Ljavax/inject/Provider;

    .line 36
    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/apps/camera/async/MainThread;

    iget-object v1, p0, Lcom/android/camera/stats/ActivityInstrumentationModule_ProvideInstrumentationCleanupBehaviorFactory;->activityLifecycleProvider:Ljavax/inject/Provider;

    .line 37
    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/libraries/stitch/lifecycle/Lifecycle;

    iget-object v2, p0, Lcom/android/camera/stats/ActivityInstrumentationModule_ProvideInstrumentationCleanupBehaviorFactory;->cleanupBehaviorProvider:Ljavax/inject/Provider;

    .line 38
    invoke-interface {v2}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/camera/stats/InstrumentationSessionCleanupBehavior;

    .line 35
    invoke-static {v0, v1, v2}, Lcom/android/camera/stats/ActivityInstrumentationModule;->provideInstrumentationCleanupBehavior(Lcom/google/android/apps/camera/async/MainThread;Lcom/google/android/libraries/stitch/lifecycle/Lifecycle;Lcom/android/camera/stats/InstrumentationSessionCleanupBehavior;)Lcom/android/camera/behavior/Behavior;

    move-result-object v0

    const-string v1, "Cannot return null from a non-@Nullable @Provides method"

    .line 34
    invoke-static {v0, v1}, Landroid/support/v4/widget/DrawerLayout$DrawerLayoutCompatImplApi21;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/behavior/Behavior;

    return-object v0
.end method

.method public final bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 11
    invoke-virtual {p0}, Lcom/android/camera/stats/ActivityInstrumentationModule_ProvideInstrumentationCleanupBehaviorFactory;->get()Lcom/android/camera/behavior/Behavior;

    move-result-object v0

    return-object v0
.end method
