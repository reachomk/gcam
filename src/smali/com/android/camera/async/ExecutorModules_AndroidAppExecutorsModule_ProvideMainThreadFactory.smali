.class public final Lcom/android/camera/async/ExecutorModules_AndroidAppExecutorsModule_ProvideMainThreadFactory;
.super Ljava/lang/Object;
.source "ExecutorModules_AndroidAppExecutorsModule_ProvideMainThreadFactory.java"

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
.field private final module$9HHMUR9FC5N68SJFD5I2UOR1DLIN4O9FC5PNIRJ35T2NGPB3ELQ6USIDDTI7AR35ECI42RJ4E9NMIP21E1O4AU35CDQN8RRIED6MUP3LDHIJM___:Lcom/android/camera/behavior/Behaviors;


# direct methods
.method public constructor <init>(Lcom/android/camera/behavior/Behaviors;)V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    iput-object p1, p0, Lcom/android/camera/async/ExecutorModules_AndroidAppExecutorsModule_ProvideMainThreadFactory;->module$9HHMUR9FC5N68SJFD5I2UOR1DLIN4O9FC5PNIRJ35T2NGPB3ELQ6USIDDTI7AR35ECI42RJ4E9NMIP21E1O4AU35CDQN8RRIED6MUP3LDHIJM___:Lcom/android/camera/behavior/Behaviors;

    .line 17
    return-void
.end method


# virtual methods
.method public final synthetic get()Ljava/lang/Object;
    .locals 2

    .prologue
    .line 8
    .line 1022
    invoke-static {}, Lcom/android/camera/behavior/Behaviors;->provideMainThread()Lcom/google/android/apps/camera/async/MainThread;

    move-result-object v0

    const-string v1, "Cannot return null from a non-@Nullable @Provides method"

    .line 1021
    invoke-static {v0, v1}, Landroid/support/v4/widget/DrawerLayout$DrawerLayoutCompatImplApi21;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/apps/camera/async/MainThread;

    .line 8
    return-object v0
.end method
