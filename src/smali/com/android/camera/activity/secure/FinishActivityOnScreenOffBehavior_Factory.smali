.class public final Lcom/android/camera/activity/secure/FinishActivityOnScreenOffBehavior_Factory;
.super Ljava/lang/Object;
.source "FinishActivityOnScreenOffBehavior_Factory.java"

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
.field private final activityContextProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<",
            "Landroid/content/Context;",
            ">;"
        }
    .end annotation
.end field

.field private final activityFinishWithReasonProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<",
            "Lcom/android/camera/util/activity/ActivityFinishWithReason;",
            ">;"
        }
    .end annotation
.end field

.field private final loggerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<",
            "Lcom/android/camera/debug/Logger$Factory;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider",
            "<",
            "Landroid/content/Context;",
            ">;",
            "Ljavax/inject/Provider",
            "<",
            "Lcom/android/camera/util/activity/ActivityFinishWithReason;",
            ">;",
            "Ljavax/inject/Provider",
            "<",
            "Lcom/android/camera/debug/Logger$Factory;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    iput-object p1, p0, Lcom/android/camera/activity/secure/FinishActivityOnScreenOffBehavior_Factory;->activityContextProvider:Ljavax/inject/Provider;

    .line 26
    iput-object p2, p0, Lcom/android/camera/activity/secure/FinishActivityOnScreenOffBehavior_Factory;->activityFinishWithReasonProvider:Ljavax/inject/Provider;

    .line 28
    iput-object p3, p0, Lcom/android/camera/activity/secure/FinishActivityOnScreenOffBehavior_Factory;->loggerProvider:Ljavax/inject/Provider;

    .line 29
    return-void
.end method


# virtual methods
.method public final synthetic get()Ljava/lang/Object;
    .locals 4

    .prologue
    .line 10
    .line 1033
    new-instance v3, Lcom/android/camera/activity/secure/FinishActivityOnScreenOffBehavior;

    iget-object v0, p0, Lcom/android/camera/activity/secure/FinishActivityOnScreenOffBehavior_Factory;->activityContextProvider:Ljavax/inject/Provider;

    .line 1034
    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    iget-object v1, p0, Lcom/android/camera/activity/secure/FinishActivityOnScreenOffBehavior_Factory;->activityFinishWithReasonProvider:Ljavax/inject/Provider;

    .line 1035
    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/camera/util/activity/ActivityFinishWithReason;

    iget-object v2, p0, Lcom/android/camera/activity/secure/FinishActivityOnScreenOffBehavior_Factory;->loggerProvider:Ljavax/inject/Provider;

    .line 1036
    invoke-interface {v2}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/camera/debug/Logger$Factory;

    invoke-direct {v3, v0, v1, v2}, Lcom/android/camera/activity/secure/FinishActivityOnScreenOffBehavior;-><init>(Landroid/content/Context;Lcom/android/camera/util/activity/ActivityFinishWithReason;Lcom/android/camera/debug/Logger$Factory;)V

    .line 10
    return-object v3
.end method
