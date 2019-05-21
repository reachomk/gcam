.class Landroid/support/design/widget/ValueAnimatorCompat$Impl$AnimatorUpdateListenerProxy;
.super Ljava/lang/Object;
.source "ValueAnimatorCompat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/design/widget/ValueAnimatorCompat$Impl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x608
    name = "AnimatorUpdateListenerProxy"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/support/design/widget/ValueAnimatorCompat;

.field final synthetic val$updateListener:Landroid/support/design/widget/ValueAnimatorCompat$AnimatorUpdateListener;


# direct methods
.method constructor <init>(Landroid/support/design/widget/ValueAnimatorCompat;Landroid/support/design/widget/ValueAnimatorCompat$AnimatorUpdateListener;)V
    .locals 0

    .prologue
    .line 2132
    iput-object p1, p0, Landroid/support/design/widget/ValueAnimatorCompat$Impl$AnimatorUpdateListenerProxy;->this$0:Landroid/support/design/widget/ValueAnimatorCompat;

    iput-object p2, p0, Landroid/support/design/widget/ValueAnimatorCompat$Impl$AnimatorUpdateListenerProxy;->val$updateListener:Landroid/support/design/widget/ValueAnimatorCompat$AnimatorUpdateListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate()V
    .locals 2

    .prologue
    .line 1135
    iget-object v0, p0, Landroid/support/design/widget/ValueAnimatorCompat$Impl$AnimatorUpdateListenerProxy;->val$updateListener:Landroid/support/design/widget/ValueAnimatorCompat$AnimatorUpdateListener;

    iget-object v1, p0, Landroid/support/design/widget/ValueAnimatorCompat$Impl$AnimatorUpdateListenerProxy;->this$0:Landroid/support/design/widget/ValueAnimatorCompat;

    invoke-interface {v0, v1}, Landroid/support/design/widget/ValueAnimatorCompat$AnimatorUpdateListener;->onAnimationUpdate(Landroid/support/design/widget/ValueAnimatorCompat;)V

    .line 1136
    return-void
.end method
