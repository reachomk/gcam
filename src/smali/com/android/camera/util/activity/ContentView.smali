.class public Lcom/android/camera/util/activity/ContentView;
.super Ljava/lang/Object;
.source "ContentView.java"

# interfaces
.implements Lcom/google/android/apps/camera/util/ui/FindViewById;


# instance fields
.field private final activity:Landroid/app/Activity;


# direct methods
.method public constructor <init>(Landroid/app/Activity;)V
    .locals 0

    .prologue
    .line 1018
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1019
    invoke-static {p1}, Lcom/google/common/base/ExtraObjectsMethodsForWeb;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1020
    iput-object p1, p0, Lcom/android/camera/util/activity/ContentView;->activity:Landroid/app/Activity;

    .line 1021
    return-void
.end method


# virtual methods
.method public findViewById(I)Landroid/view/View;
    .locals 1

    .prologue
    .line 1032
    iget-object v0, p0, Lcom/android/camera/util/activity/ContentView;->activity:Landroid/app/Activity;

    invoke-virtual {v0, p1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public setContentView(I)V
    .locals 1

    .prologue
    .line 1043
    iget-object v0, p0, Lcom/android/camera/util/activity/ContentView;->activity:Landroid/app/Activity;

    invoke-virtual {v0, p1}, Landroid/app/Activity;->setContentView(I)V

    .line 1044
    return-void
.end method
