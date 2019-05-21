.class public final Lcom/android/camera/debug/performance/MetricBuilderModule_ProvideMetricBuilderFactory;
.super Ljava/lang/Object;
.source "MetricBuilderModule_ProvideMetricBuilderFactory.java"

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
.field private final flagsProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<",
            "Lcom/android/camera/util/flags/Flags;",
            ">;"
        }
    .end annotation
.end field

.field private final module:Lcom/android/camera/debug/performance/MetricBuilderModule;


# direct methods
.method public constructor <init>(Lcom/android/camera/debug/performance/MetricBuilderModule;Ljavax/inject/Provider;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/camera/debug/performance/MetricBuilderModule;",
            "Ljavax/inject/Provider",
            "<",
            "Lcom/android/camera/util/flags/Flags;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    iput-object p1, p0, Lcom/android/camera/debug/performance/MetricBuilderModule_ProvideMetricBuilderFactory;->module:Lcom/android/camera/debug/performance/MetricBuilderModule;

    .line 21
    iput-object p2, p0, Lcom/android/camera/debug/performance/MetricBuilderModule_ProvideMetricBuilderFactory;->flagsProvider:Ljavax/inject/Provider;

    .line 22
    return-void
.end method


# virtual methods
.method public final synthetic get()Ljava/lang/Object;
    .locals 2

    .prologue
    .line 9
    .line 1026
    iget-object v0, p0, Lcom/android/camera/debug/performance/MetricBuilderModule_ProvideMetricBuilderFactory;->flagsProvider:Ljavax/inject/Provider;

    .line 1027
    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/util/flags/Flags;

    invoke-static {v0}, Lcom/android/camera/debug/performance/MetricBuilderModule;->provideMetricBuilder(Lcom/android/camera/util/flags/Flags;)Lcom/android/camera/debug/performance/MetricBuilder;

    move-result-object v0

    const-string v1, "Cannot return null from a non-@Nullable @Provides method"

    .line 1026
    invoke-static {v0, v1}, Landroid/support/v4/widget/DrawerLayout$DrawerLayoutCompatImplApi21;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/debug/performance/MetricBuilder;

    .line 9
    return-object v0
.end method
