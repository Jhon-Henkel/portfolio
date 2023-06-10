<script lang="ts">
    import {defineComponent} from "vue";

    export default defineComponent({
        data() {
            return {
                age: this.calculateDifferenceOfNowToDate(new Date(1995, 10, 12)),
                experienceTime: this.calculateDifferenceOfNowToDate(new Date(2022, 3, 21)),
            }
        },
        methods: {
            calculateDifferenceOfNowToDate(date: Date): number {
                const today = new Date();
                let difference = today.getFullYear() - date.getFullYear();
                const month = today.getMonth() - date.getMonth();
                if (month < 0 || (month === 0 && today.getDate() < date.getDate())) {
                    difference--;
                }
                return difference;
            },
            getStringYearOrYears(years: number): string {
                return years === 1 ? 'ANO' : 'ANOS';
            }
        }
    })
</script>

<template>
    <div class="row">
        <div class="col hello-text">
            <span>OLÁ &#128075; EU SOU O JHON</span>
        </div>
    </div>
    <div class="big-text">
        <div class="row">
            <div class="col-5">
                <span>WEB</span>
            </div>
            <div class="icons col-7">
                <a href="https://www.linkedin.com/in/jhonatan-henkel-b55950211/" target="_blank" class="a-default me-3">
                    <i class="fa-brands fa-linkedin"/>
                </a>
                <a href="https://github.com/jhon-Henkel" target="_blank" class="a-default me-3">
                    <i class="fa-brands fa-github"/>
                </a>
                <a href="https://medium.com/@jhowrf" target="_blank" class="a-default me-3">
                    <i class="fa-brands fa-medium"/>
                </a>
            </div>
        </div>
        <div class="row">
            <div class="col">
                <span>DEVELOPER</span>
            </div>
        </div>
    </div>
    <div class="text-end">
        <div class="row bottom-text bottom-text-line-one">
            <div class="col ms-5">
                <span>TENHO {{ age }} ANOS, SOU DESENVOLVEDOR BACKEND COM {{ experienceTime }} {{ getStringYearOrYears(experienceTime) }} DE</span>
            </div>
        </div>
        <div class="row bottom-text bottom-text-line-two">
            <div class="col">
                <span>EXPERIÊNCIA EM DESENVOLVIMENTO DE SISTEMAS WEB</span>
            </div>
        </div>
    </div>
</template>

<style scoped>
    .hello-text {
        font-size: 1.5rem;
        font-weight: bold;
        color: rgb(5, 100, 107);
    }
    .big-text {
        font-size: 12rem;
        font-weight: bold;
        color: #d0d0d0;
        line-height: 0.8;
    }
    .bottom-text {
        font-size: 1.2rem;
        font-weight: bold;
        color: rgb(5, 100, 107);
    }
    .bottom-text-line-one {
        margin-right: 5rem;
    }
    .bottom-text-line-two {
        margin-right: 15rem;
    }
    .icons {
        margin-top: 2.2rem;
        font-size: 5rem;
    }
    .a-default {
        text-decoration: none;
        color: #d0d0d0;
    }
    .a-default:hover {
        color: rgb(5, 100, 107);
    }
</style>